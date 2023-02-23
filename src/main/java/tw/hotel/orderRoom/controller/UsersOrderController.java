package tw.hotel.orderRoom.controller;

import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutALL;
import tw.hotel.orderRoom.model.Orders;
import tw.hotel.attractions.model.Collect;
import tw.hotel.attractions.model.Itinerary;
import tw.hotel.attractions.service.CollectService;
import tw.hotel.attractions.service.ItineraryService;
import tw.hotel.coupon.model.Coupon;
import tw.hotel.coupon.model.EmailSender;
import tw.hotel.coupon.model.HtmlContentTemp;
import tw.hotel.coupon.service.CouponService;
import tw.hotel.gift.model.giftOrderBean;
import tw.hotel.gift.service.giftOrderService;
import tw.hotel.loginlogout.model.HotelBean;
import tw.hotel.loginlogout.service.LoginService;
import tw.hotel.orderRoom.model.OrderDetails;
import tw.hotel.orderRoom.service.OrdersService;
import tw.hotel.restaurant.model.Arrange;
import tw.hotel.restaurant.service.RestaurantDaoService;
import tw.hotel.roomtype.model.RoomsBean;
import tw.hotel.roomtype.service.RoomTypeService;

@Controller
@RequestMapping("/users")
public class UsersOrderController {

	@Autowired
	private OrdersService oService;

	@Autowired
	private RoomTypeService rService;

	@Autowired
	private LoginService lService;

	@Autowired
	private CollectService coService;

	@Autowired
	private ItineraryService iService;

	@Autowired
	private RestaurantDaoService arrRepo;

	@Autowired
	private giftOrderService goService;

	@Autowired
	private CouponService cService;
	
	@Autowired
	private EmailSender emailSenders;

	public static AllInOne all;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

	// check
	@PostMapping(path = "/checkroom.controller")
	public String checkroom(Principal p, @RequestParam("roomId") String roomId, HttpServletRequest req, Model m) {
		HotelBean user = lService.findUserEmail2(p.getName());
		HttpSession session = req.getSession();
		String checkindate = "";
		String checkoutdate = "";
		if (session.getAttribute("checkinDate") != null) {
			checkindate = session.getAttribute("checkinDate").toString();
		}
		if (session.getAttribute("checkoutDate") != null) {
			checkoutdate = session.getAttribute("checkoutDate").toString();
		}

		List<RoomsBean> roombeans = rService.findById(roomId);
		RoomsBean roombean = null;
		for (RoomsBean b : roombeans) {
			roombean = b;
		}
		Date orderdate = new Date();
		String today = sdf.format(orderdate);
		m.addAttribute("today", today);
		m.addAttribute("checkindate", checkindate);
		m.addAttribute("checkoutdate", checkoutdate);
		m.addAttribute("user", user);
		m.addAttribute("useremail", user.getUseremail());
		m.addAttribute("roombean", roombean);
		System.out.println(roomId);
		System.out.println(checkindate);
		return "orderRoom/orderCheck";
	}

	@PostMapping(path = "/checkorder.controller")
	public String checkorder2(Principal p,@RequestParam("userid") Integer userid, @RequestParam("username") String username,
			@RequestParam("checkindate") String checkindate, @RequestParam("checkoutdate") String checkoutdate,
			@RequestParam("roomname") String roomname, @RequestParam("price") String roompriceStr,
			@RequestParam("roomId") String roomid, @RequestParam("useremail") String useremail,
			@RequestParam("userphone") String userphone, @RequestParam("useridcard") String useridcard,
			@RequestParam("coupon") @Nullable String couponcode,
			@RequestParam("notes") @Nullable String notes, Model m) throws ParseException {
		HotelBean user = lService.findUserEmail2(p.getName());
		m.addAttribute("useremail", user.getUseremail());
		int price = 0;
		int couponid = 0;
		int discount=0;
		System.out.println(couponcode);
		Date orderdate = new Date();
		Date utilcheckindate = sdf.parse(checkindate);
		Date utilcheckoutdate = sdf.parse(checkoutdate);
		long diff = utilcheckoutdate.getTime() - utilcheckindate.getTime();
		TimeUnit time = TimeUnit.DAYS;
		long difference = time.convert(diff, TimeUnit.MILLISECONDS);
		if (roompriceStr == null || roompriceStr.trim().length() == 0) {
			roompriceStr = "0";}
			price = Integer.parseInt(roompriceStr) * (int) difference;
			discount=price;
		
		if(couponcode==null||couponcode.trim().length() == 0) {
			couponcode="";
		}else {
			Coupon coupon = cService.findByCouponCode(couponcode);
			String couponValue = coupon.getCouponValue();
			couponid=coupon.getCouponId();
			if (couponValue.matches("\\d+$")) {
			price -= Integer.parseInt(couponValue);
			} else {
			price *= Double.parseDouble(couponValue);
			}
		}
		discount=discount-price;
		java.sql.Date sqlorderdate = new java.sql.Date(orderdate.getTime());
		java.sql.Date sqlcheckindate = new java.sql.Date(utilcheckindate.getTime());
		java.sql.Date sqlcheckoutdate = new java.sql.Date(utilcheckoutdate.getTime());

		Orders ob = new Orders();
		ob.setUserid(userid);
		ob.setRoomid(roomid);
		ob.setCouponid(couponid);
		ob.setOrderdate(sqlorderdate);
		ob.setCheckindate(sqlcheckindate);
		ob.setCheckoutdate(sqlcheckoutdate);
		ob.setCanceltag("已付款");
		ob.setUsername(username);
		ob.setRoomname(roomname);
		ob.setPrice(price);

		OrderDetails odb = new OrderDetails();
		odb.setUseremail(useremail);
		odb.setUserphone(userphone);
		odb.setUseridcard(useridcard);
		odb.setCoupon(couponcode);
		odb.setNotes(notes);

		m.addAttribute("discount",discount);
		m.addAttribute("orderbean", ob);
		m.addAttribute("orderdetailsbean", odb);
		
		return "orderRoom/orderPay";
	}

	// insert
	@PostMapping(path = "/insertorder.controller")
	@ResponseBody
	@Transactional
	public Object insertorder(@RequestBody Map<String, String> json, HttpServletRequest req, Model m)
			throws ParseException {
		HttpSession session = req.getSession();

		String roomid = json.get("roomId");
		String userid = json.get("userid");
		String couponid = json.get("couponid");
		String roomname = json.get("roomname");
		String priceStr = json.get("price");
		String checkindate = json.get("checkindate");
		String checkoutdate = json.get("checkoutdate");
		String username = json.get("username");
		String useridcard = json.get("useridcard");
		String useremail = json.get("useremail");
		String userphone = json.get("userphone");
		String coupon = json.get("coupon");
		String notes = json.get("notes");

		session.setAttribute("roomid", roomid);
		session.setAttribute("userid", userid);
		session.setAttribute("couponid", couponid);
		session.setAttribute("roomname", roomname);
		session.setAttribute("priceStr", priceStr);
		session.setAttribute("checkindate", checkindate);
		session.setAttribute("checkoutdate", checkoutdate);
		session.setAttribute("useridcard", useridcard);
		session.setAttribute("username", username);
		session.setAttribute("useremail", useremail);
		session.setAttribute("userphone", userphone);
		session.setAttribute("coupon", coupon);
		session.setAttribute("notes", notes);

		all = new AllInOne("");
		AioCheckOutALL obj = new AioCheckOutALL();
		obj.setMerchantTradeNo("NO" + (int) (Math.random() * 100000) + (int) (Math.random() * 100) + 1);
		obj.setMerchantTradeDate(sdf2.format(new Date()));
		obj.setTotalAmount(priceStr);
		obj.setTradeDesc("test Description");
		obj.setItemName(roomname);
		obj.setReturnURL("http://211.23.128.214:5000");
		obj.setNeedExtraPaidInfo("N");
		// obj.setOrderResultURL("http://localhost:8081/users/insertsuccess.controller");
		obj.setClientBackURL("http://localhost:8081/users/insertsuccess.controller");

		String form = all.aioCheckOut(obj, null);
		System.out.println(form);
		return form;

	}

	@GetMapping(path = "/insertsuccess.controller")
	public String insertsuccess1(HttpServletRequest req, Model m,Principal p) throws ParseException {
		HotelBean user = lService.findUserEmail2(p.getName());
		HttpSession session = req.getSession();
		String roomid = session.getAttribute("roomid").toString();
		String couponid = session.getAttribute("couponid").toString();
		String userid = session.getAttribute("userid").toString();
		String roomname = session.getAttribute("roomname").toString();
		String priceStr = session.getAttribute("priceStr").toString();
		String checkindate = session.getAttribute("checkindate").toString();
		String checkoutdate = session.getAttribute("checkoutdate").toString();
		String useridcard = session.getAttribute("useridcard").toString();
		String username = session.getAttribute("username").toString();
		String useremail = session.getAttribute("useremail").toString();
		String userphone = session.getAttribute("userphone").toString();
		String coupon = session.getAttribute("coupon").toString();
		String notes = session.getAttribute("notes").toString();
		System.out.println(roomid + " " + couponid + " " + userid + " " + roomname + " " + priceStr + " " + checkindate
				+ " " + useridcard + " " + username +
				" " + useremail + " " + userphone + " " + coupon + " " + notes);
		if (couponid == null || couponid.trim().length() == 0) {
			couponid = "0";
		}

		int intcouponid = 0;
		int price = 0;
		int id = 0;

		price = Integer.parseInt(priceStr);
		id = Integer.parseInt(userid);
		intcouponid = Integer.parseInt(couponid);

		Date orderdate = new Date();
		Date utilcheckindate = sdf.parse(checkindate);
		Date utilcheckoutdate = sdf.parse(checkoutdate);

		java.sql.Date sqlorderdate = new java.sql.Date(orderdate.getTime());
		java.sql.Date sqlcheckindate = new java.sql.Date(utilcheckindate.getTime());
		java.sql.Date sqlcheckoutdate = new java.sql.Date(utilcheckoutdate.getTime());

		Orders ob = new Orders();
		ob.setUsername(username);
		ob.setUserid(id);
		ob.setRoomid(roomid);
		if (intcouponid != 0) {
			ob.setCouponid(intcouponid);
		}
		ob.setOrderdate(sqlorderdate);
		ob.setCheckindate(sqlcheckindate);
		ob.setCheckoutdate(sqlcheckoutdate);
		ob.setRoomname(roomname);
		ob.setPrice(price);
		ob.setCanceltag("已付款");
		oService.InsertOrder(ob);

		OrderDetails odb = new OrderDetails();
		odb.setUseremail(useremail);
		odb.setUserphone(userphone);
		odb.setUseridcard(useridcard);
		odb.setCoupon(coupon);
		odb.setNotes(notes);
		oService.InsertOrderDetails(odb);
		m.addAttribute("useremail", user.getUseremail());
		m.addAttribute("orderbean", ob);
		m.addAttribute("orderdetailsbean", odb);
		
		if(coupon=="") {
			System.out.println("true! coupon!= '' "+"true==================================");
		}else {
			Orders order = oService.findOrderid(intcouponid);
			int orderid = order.getOrderid();
			cService.disableCodeByRoomOrder(coupon,orderid);
		}
		String htmlBody = HtmlContentTemp.createRoomOrderContent(ob,odb);
		emailSenders.sendRoomOrderEmail(useremail, htmlBody);
		session.removeAttribute("roomid");
		session.removeAttribute("userid");
		session.removeAttribute("couponid");
		session.removeAttribute("roomname");
		session.removeAttribute("priceStr");
		session.removeAttribute("checkindate");
		session.removeAttribute("checkoutdate");
		session.removeAttribute("useridcard");
		session.removeAttribute("username");
		session.removeAttribute("useremail");
		session.removeAttribute("userphone");
		session.removeAttribute("coupon");
		session.removeAttribute("notes");

		return "orderRoom/orderInsertSuccess";

	}

	// search
	@GetMapping(path = "/searchorder.controller")
	public String searchorder1(Principal p, Model m) {
		HotelBean user = lService.findUserEmail2(p.getName());

		List<Orders> orderbean = oService.findAllByUserid(user.getUserid());

		Orders ob = null;
		for (Orders b : orderbean) {
			ob = b;
		}
		if (ob == null) {
			return "orderRoom/orderEmpty";
		}
		m.addAttribute("useremail", user.getUseremail());
		m.addAttribute("orderbean", orderbean);
		return "orderRoom/orderSearch";
	}

	@PostMapping(path = "/searchorder.controller")
	public String searchorder2(Principal p, Model m) {

		HotelBean user = lService.findUserEmail2(p.getName());

		List<Orders> orderbean = oService.findAllByUserid(user.getUserid());
		
		m.addAttribute("orderbean", orderbean);
		m.addAttribute("useremail", user.getUseremail());
		
		Orders ob = null;
		for (Orders b : orderbean) {
			ob = b;
		}
		if (ob == null) {
			return "orderRoom/orderEmpty";
		} 
			return "orderRoom/orderSearch";
	}

	@PostMapping(path = "/searchdetails.controller")
	public String searchdetails(@RequestParam("orderid") String orderidStr, Model m,Principal p) {
		HotelBean user = lService.findUserEmail2(p.getName());
		int orderid = Integer.parseInt(orderidStr);
		Orders orderbean = oService.findByIdforOrder(orderid);
		OrderDetails orderdetailsbean = oService.findByIdforDetails(orderid);
		m.addAttribute("useremail",user.getUseremail());
		m.addAttribute("orderbean", orderbean);
		m.addAttribute("orderdetailsbean", orderdetailsbean);

		return "orderRoom/orderDetails";
	}

	@PostMapping(path = "/searchdetailsm.controller")
	public String searchdetailsm(@RequestParam("orderid") String orderidStr, Model m,Principal p) {
		HotelBean user = lService.findUserEmail2(p.getName());

		int orderid = Integer.parseInt(orderidStr);
		Orders orderbean = oService.findByIdforOrder(orderid);
		OrderDetails orderdetailsbean = oService.findByIdforDetails(orderid);
		m.addAttribute("useremail",user.getUseremail());
		m.addAttribute("orderbean", orderbean);
		m.addAttribute("orderdetailsbean", orderdetailsbean);

		return "orderRoom/orderDetailsMember";
	}
	
	// member
	@GetMapping(path = "/mymembercenter.controller")
	public String membercenter(Principal p, Model m) {
		HotelBean user = lService.findUserEmail2(p.getName());
		m.addAttribute("user", user);
		m.addAttribute("useremail", user.getUseremail());
		List<Orders> orderbean = oService.findAllByUserid(user.getUserid());
		m.addAttribute("orderbean", orderbean);
		
		int uid = user.getUserid();
		List<Collect> collect = coService.findByUserId(uid);
		System.out.println(collect + "collect ");
		List<Itinerary> list = new ArrayList<Itinerary>();
		List<Integer> pageList = new ArrayList<Integer>();
		System.out.println(list + " 0");
		for (Collect co : collect) {
			if (co.getLiketf() == 1) {
				int pageId = co.getPageId();
				pageList.add(pageId);
			}
		}
		for (int i : pageList) {
			Itinerary itinerary = iService.findById(i);
			list.add(itinerary);
		}

		System.out.println(list);
		m.addAttribute("list", list);
		String name = user.getUsername();
		List<Arrange> arrangelist = arrRepo.ArrfindByNameLike(name);
		m.addAttribute("arrange", arrangelist);

		List<giftOrderBean> gBeans = goService.findAllOrderByUserid(user.getUserid());
		m.addAttribute("gorder", gBeans);

		return "orderRoom/orderMemberCenter";
	}

	// update
	@PostMapping(path = "/updateorder.controller")
	public String updateorder(Principal p,@RequestParam("orderid") String orderidstr, @RequestParam("username") String username,
			@RequestParam("useremail") String useremail, @RequestParam("userphone") String userphone,
			@RequestParam("useridcard") String useridcard, @RequestParam("notes") String notes, Model m)
			throws ParseException {
		HotelBean user = lService.findUserEmail2(p.getName());
		m.addAttribute("useremail", user.getUseremail());
		int orderid = Integer.parseInt(orderidstr.trim());
		Orders orderbean = null;
		OrderDetails orderdetailsbean = null;

		Orders ob = oService.findByIdforOrder(orderid);
		ob.setUsername(username);

		OrderDetails odb = oService.findByIdforDetails(orderid);
		odb.setUseremail(useremail);
		odb.setUserphone(userphone);
		odb.setUseridcard(useridcard);
		odb.setNotes(notes);

		oService.modifyOrder(ob);
		oService.modifyOrderDetails(odb);
		orderbean = oService.findByIdforOrder(orderid);
		orderdetailsbean = oService.findByIdforDetails(orderid);
		m.addAttribute("orderbean", orderbean);
		m.addAttribute("orderdetailsbean", orderdetailsbean);
		return "";
	}

	// cancel
	@PostMapping(path = "/cancelorder.controller")
	public String cancelorder(Principal p,@RequestParam("orderid") String orderidstr,Model m) {
		HotelBean user = lService.findUserEmail2(p.getName());
		m.addAttribute("useremail", user.getUseremail());
		int orderid = Integer.parseInt(orderidstr);
		Orders order = oService.findByIdforOrder(orderid);
		order.setCanceltag("待審核");
		oService.modifyOrder(order);
		return "";
	}

	// cancel collect
	@PostMapping("/cancelcollect")
	public String processCancelCollectAction(@RequestParam("pageId") String pageId, Principal p, Model m) {
		HotelBean user = lService.findUserEmail2(p.getName());
		m.addAttribute("useremail", user.getUseremail());		
		int uid = user.getUserid();
		int pageid = Integer.parseInt(pageId);

		Collect exist = coService.findById(pageid, uid);
		exist.setLiketf(0);
		coService.update(exist);

		return "orderRoom/orderMemberCenter";
	}
}
