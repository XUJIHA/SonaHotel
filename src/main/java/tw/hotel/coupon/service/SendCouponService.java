package tw.hotel.coupon.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.hotel.coupon.model.CountDays;
import tw.hotel.coupon.model.Coupon;
import tw.hotel.coupon.model.CouponUser;
import tw.hotel.coupon.model.EmailSender;
import tw.hotel.coupon.model.HtmlContentTemp;
import tw.hotel.gift.model.giftOrderBean;
import tw.hotel.gift.service.giftOrderService;
import tw.hotel.loginlogout.model.HotelBean;
import tw.hotel.loginlogout.service.LoginService;
import tw.hotel.orderRoom.model.Orders;
import tw.hotel.orderRoom.service.OrdersService;

@Service
public class SendCouponService {
	
	@Autowired
	private LoginService lService;
	@Autowired
	private OrdersService oService;
	@Autowired
	private giftOrderService gService;
	@Autowired
	private CouponService cService;
	@Autowired
	private EmailSender emailSender;
	
	public List<CouponUser> fetchData() {
		
		List<CouponUser> cusers = new ArrayList<>();
		List<HotelBean> members = lService.findAll();
		for(HotelBean member : members) {
			int memberId = member.getUserid();
			int roomOrderTotal = 0;
			int giftOrderTotal = 0;
			int restOrderTotal = 0;
			List<Orders> roomOrders = oService.findAllByUserid(memberId);
			for(Orders roomOrder : roomOrders) {
				roomOrderTotal += roomOrder.getPrice();
			}
			List<giftOrderBean> giftOrders = gService.findAllOrderByUserid(memberId);
			for(giftOrderBean giftOrder : giftOrders) {
				giftOrderTotal += giftOrder.getTotalamount();
			}
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String registDateStr = member.getUserregistration();
			String memberBirthdayStr = member.getUserbirthday();
			Date registDate = null;
			Date memberBirthday = null;
			try {
				registDate = sdf.parse(registDateStr);
				memberBirthday = sdf.parse(memberBirthdayStr);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String daysFromRegist = CountDays.CountBetween(registDate, new Date());
			CouponUser cuser = new CouponUser(memberId, member.getUsername(), memberBirthday,
												member.getUseremail(), daysFromRegist,
												restOrderTotal, roomOrderTotal, giftOrderTotal);
			cusers.add(cuser);
		}
		return cusers;
	}
	
	public void sendCouponForRegist(HotelBean user) {
		
		String userEmail = user.getUseremail();
		String userName = user.getUsername();
		String couponType = "百分比";
		String couponValue = "0.9";
		String couponName = "新註冊會員";
		Date now = new Date();
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(now);
		calendar.add(Calendar.MONTH, 2);
		Date expiryDate = calendar.getTime();
		Coupon coupon = cService.generateCoupon(couponType, couponValue,
												couponName, expiryDate);
		String code = coupon.getCouponCode();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String expiryDateStr = sdf.format(expiryDate);
		String subject = "Sona新會員專屬折扣碼";
		String htmlBody = HtmlContentTemp.createRegistContent(code, expiryDateStr, userName);
		emailSender.sendEmailByHtmlForRegist(userEmail, subject, htmlBody);
	}
	
	public void sendCoupons(Map<String, Object> data) {
		
		@SuppressWarnings("unchecked")
		List<String> userEmails = (List<String>) data.get("checker2Values");
		String couponType = (String) data.get("couponType");
		String couponValue = (String) data.get("couponValue");
		String couponName = (String) data.get("couponName");
		String expiryDateStr = (String) data.get("expiryDate");
		String subject = (String) data.get("subject");
		String content = (String) data.get("editorData");
		String mailTheme = (String) data.get("mailTheme");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date expiryDate = null;
		try {
			expiryDate = sdf.parse(expiryDateStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		for(String recipient : userEmails) {
			String userName = lService.findUserEmail2(recipient).getUsername();
			Coupon coupon = cService.generateCoupon(couponType, couponValue,
													couponName, expiryDate);
			String code = coupon.getCouponCode();
			String htmlBody = "";
			if (mailTheme.equals("normal")) {
				htmlBody = HtmlContentTemp.createNormalContent(code, expiryDateStr, userName, content);
				emailSender.sendEmailByHtml(recipient, subject, htmlBody);
			}
			if (mailTheme.equals("birthday")) {
				htmlBody = HtmlContentTemp.createBirthdayContent(code, expiryDateStr, userName, content);
				emailSender.sendEmailByHtmlForBirthday(recipient, subject, htmlBody);
			}
			if (mailTheme.equals("empty")) {
				htmlBody = HtmlContentTemp.createEmptyContent(code, expiryDateStr, userName, content);
				emailSender.sendEmailByHtmlWithoutBanner(recipient, subject, htmlBody);
			}
		}
	}
	
	public void sendCouponsForAll(Map<String, Object> data) {
		
		List<HotelBean> users = lService.findAll();
		List<String> userEmails = new ArrayList<>();
		users.forEach((user) -> userEmails.add(user.getUseremail()));
		String couponType = (String) data.get("couponType");
		String couponValue = (String) data.get("couponValue");
		String couponName = (String) data.get("couponName");
		String expiryDateStr = (String) data.get("expiryDate");
		String subject = (String) data.get("subject");
		String content = (String) data.get("editorData");
		String mailTheme = (String) data.get("mailTheme");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date expiryDate = null;
		try {
			expiryDate = sdf.parse(expiryDateStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		for(String recipient : userEmails) {
			String userName = lService.findUserEmail2(recipient).getUsername();
			Coupon coupon = cService.generateCoupon(couponType, couponValue,
					couponName, expiryDate);
			String code = coupon.getCouponCode();
			String htmlBody = "";
			if (mailTheme.equals("normal")) {
				htmlBody = HtmlContentTemp.createNormalContent(code, expiryDateStr, userName, content);
				emailSender.sendEmailByHtml(recipient, subject, htmlBody);
			}
			if (mailTheme.equals("birthday")) {
				htmlBody = HtmlContentTemp.createBirthdayContent(code, expiryDateStr, userName, content);
				emailSender.sendEmailByHtmlForBirthday(recipient, subject, htmlBody);
			}
			if (mailTheme.equals("empty")) {
				htmlBody = HtmlContentTemp.createEmptyContent(code, expiryDateStr, userName, content);
				emailSender.sendEmailByHtmlWithoutBanner(recipient, subject, htmlBody);
			}
		}
	}
}
