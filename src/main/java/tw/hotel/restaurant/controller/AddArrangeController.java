package tw.hotel.restaurant.controller;


import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServlet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.hotel.coupon.model.Coupon;
import tw.hotel.coupon.service.CouponService;
import tw.hotel.loginlogout.model.HotelBean;
import tw.hotel.loginlogout.service.LoginService;
import tw.hotel.restaurant.dao.RestaurantDao;
import tw.hotel.restaurant.dao.RestaurantDaoImpl;
import tw.hotel.restaurant.model.Arrange;
import tw.hotel.restaurant.model.Restaurant;
import tw.hotel.restaurant.service.RestaurantDaoService;

@Controller
@RequestMapping(path="/users")
public class AddArrangeController{
	@Autowired
	RestaurantDaoService arrRepo ;
	@Autowired
	RestaurantDaoService resRepo;
	@Autowired
	private LoginService loginService1;
	@Autowired
	private CouponService cService;
	
	@PostMapping("/AddArrange.controller")
	protected String addArrange(Principal pc1,@RequestParam("arrangename")@Nullable String name, @RequestParam("arrangepeople")@Nullable String people,
			@RequestParam("restaurantid")@Nullable String id,@RequestParam("restaurantname")@Nullable String resname, @RequestParam("arrangephone")@Nullable String phone,
			@RequestParam("arrangeday")@Nullable String day, @RequestParam("eattime")@Nullable String eattime
			,@RequestParam("userid")@Nullable String userid,@RequestParam("restaurantprice")@Nullable String restaurantprice,
			@RequestParam("coupon")@Nullable String couponCode,Model m) throws ParseException {

	
		String error = "不能輸入空白";
		if (day == "") {
			m.addAttribute("nullError5", error);
			int id2 = Integer.parseInt(id);
			List<Restaurant> list = resRepo.findResById(id2);
			m.addAttribute("resturant", list);
			m.addAttribute("name", resname);
			m.addAttribute("userphone", phone);
			m.addAttribute("username", name);
			HotelBean UserAllData = loginService1.findUserEmail2(pc1.getName());
			String UserEmail = UserAllData.getUseremail();
			m.addAttribute("useremail", UserEmail);
			return "/Restaurant/OrderRestaurant";
		}
		String name2 = name;
		String phone2 = phone;
		String day2 = day;
		String eattime2 = eattime;
		//日期比對
		String dateString = day;
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = dateFormat.parse(dateString);
		
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.set(Calendar.HOUR_OF_DAY, 0);
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.SECOND, 0);
		calendar.set(Calendar.MILLISECOND, 0);
		date = calendar.getTime();
		
		
		Date now = new Date();
		Calendar calendar2 = Calendar.getInstance();
		calendar2.setTime(now);
		calendar2.add(Calendar.DATE,-1);
		now = calendar2.getTime();
		
		int result = now.compareTo(date);
		System.out.println("這是now"+now);
		System.out.println("這是date"+date);
		System.out.println("這是result"+result);
		if(result>0) {
			m.addAttribute("dateError2","不能設定已過日期");
			int id2 = Integer.parseInt(id);
			List<Restaurant> list = resRepo.findResById(id2);
			m.addAttribute("resturant", list);
			m.addAttribute("name", resname);
			//佩佩參數
			m.addAttribute("userphone", phone);
			m.addAttribute("username", name);
			
			HotelBean UserAllData = loginService1.findUserEmail2(pc1.getName());
			String UserEmail = UserAllData.getUseremail();
			m.addAttribute("useremail", UserEmail);
			
			
			return "/Restaurant/OrderRestaurant";
		}
		
		if (name == "") {
			m.addAttribute("nullError2", error);
			int id2 = Integer.parseInt(id);
			List<Restaurant> list = resRepo.findResById(id2);
			m.addAttribute("resturant", list);
			m.addAttribute("name", resname);
			m.addAttribute("userphone", phone);
			m.addAttribute("username", name);
			HotelBean UserAllData = loginService1.findUserEmail2(pc1.getName());
			String UserEmail = UserAllData.getUseremail();
			m.addAttribute("useremail", UserEmail);
			
			
			return "/Restaurant/OrderRestaurant";
		}
		if (phone == "") {
			m.addAttribute("nullError3", error);
			int id2 = Integer.parseInt(id);
			List<Restaurant> list = resRepo.findResById(id2);
			m.addAttribute("resturant", list);
			m.addAttribute("name", resname);
			m.addAttribute("userphone", phone);
			m.addAttribute("username", name);
			HotelBean UserAllData = loginService1.findUserEmail2(pc1.getName());
			String UserEmail = UserAllData.getUseremail();
			m.addAttribute("useremail", UserEmail);
			return "/Restaurant/OrderRestaurant";
		}
		if (people == "") {
			m.addAttribute("nullError4", error);
			int id2 = Integer.parseInt(id);
			List<Restaurant> list = resRepo.findResById(id2);
			m.addAttribute("resturant", list);
			m.addAttribute("name", resname);
			m.addAttribute("userphone", phone);
			m.addAttribute("username", name);
			HotelBean UserAllData = loginService1.findUserEmail2(pc1.getName());
			String UserEmail = UserAllData.getUseremail();
			m.addAttribute("useremail", UserEmail);
			return "/Restaurant/OrderRestaurant";
		}

		if (id == "") {
			m.addAttribute("nullError7", error);
			int id2 = Integer.parseInt(id);
			List<Restaurant> list = resRepo.findResById(id2);
			m.addAttribute("resturant", list);
			m.addAttribute("name", resname);
			m.addAttribute("userphone", phone);
			m.addAttribute("username", name);
			HotelBean UserAllData = loginService1.findUserEmail2(pc1.getName());
			String UserEmail = UserAllData.getUseremail();
			m.addAttribute("useremail", UserEmail);
			return "/Restaurant/OrderRestaurant";
		}
		int check = Integer.parseInt(id);

		boolean checkResult = arrRepo.findRes(check);

		if (checkResult == true) {
			m.addAttribute("nullError10", "沒有這家餐廳");
			int id2 = Integer.parseInt(id);
			List<Restaurant> list = resRepo.findResById(id2);
			m.addAttribute("resturant", list);
			m.addAttribute("name", resname);
			m.addAttribute("userphone", phone);
			m.addAttribute("username", name);
			HotelBean UserAllData = loginService1.findUserEmail2(pc1.getName());
			String UserEmail = UserAllData.getUseremail();
			m.addAttribute("useremail", UserEmail);
			return "/Restaurant/OrderRestaurant";
		}
		HotelBean UserAllData = loginService1.findUserEmail2(pc1.getName());
		Integer UserId=UserAllData.getUserid();
		int people2 = Integer.parseInt(people);
		int resid = Integer.parseInt(id);
		int restaurantprice2 = Integer.parseInt(restaurantprice);
		
		restaurantprice2 =restaurantprice2*people2;
		
		// Coupon
		if(couponCode.length() != 0) {
			Coupon coupon = cService.findByCouponCode(couponCode);
			String couponValue = coupon.getCouponValue();
			if (couponValue.matches("\\d+$")) {
				restaurantprice2 -= Integer.parseInt(couponValue);
			} else {
				restaurantprice2 *= Double.parseDouble(couponValue);
			}
		}
		
		System.out.println(resid);
		Arrange ArrBean = new Arrange(name,phone,people2,day,eattime,resname,resid,UserId,restaurantprice2);
//		dao2.selectAll();
		arrRepo.insertArr(ArrBean);
		m.addAttribute("success", 1);
		int id2 = Integer.parseInt(id);
		List<Restaurant> list = resRepo.findResById(id2);
		m.addAttribute("resturant", list);
		m.addAttribute("name", resname);
		String UserEmail = UserAllData.getUseremail();
		m.addAttribute("useremail", UserEmail);
		m.addAttribute("userphone", phone);
		m.addAttribute("username", name);
		return "/Restaurant/OrderRestaurant";

	}
	
	@ResponseBody
	@PostMapping("/checkrescoupon.controller")
	public String processCheckCoupon(@RequestParam("couponCode") String couponCode) {
		return cService.checkCode(couponCode);
	}
	
	@ResponseBody
	@PostMapping("/checkrescouponvalue.controller")
	public String processCheckCouponValue(@RequestParam("couponCode") String couponCode,
										  @RequestParam("total") String totalStr) {
		Coupon coupon = cService.findByCouponCode(couponCode);
		String couponValue = coupon.getCouponValue();
		int total = Integer.parseInt(totalStr);
		if (couponValue.matches("\\d+$")) {
			total -= Integer.parseInt(couponValue);
		} else {
			total *= Double.parseDouble(couponValue);
		}
		String responseTotal = String.valueOf(total);
		
		return responseTotal;
	}
	
	
}
