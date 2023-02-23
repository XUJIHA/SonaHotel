package tw.hotel.restaurant.controller;



import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.hotel.loginlogout.model.HotelBean;
import tw.hotel.loginlogout.service.LoginService;
import tw.hotel.restaurant.dao.RestaurantDao;
import tw.hotel.restaurant.dao.RestaurantDaoImpl;
import tw.hotel.restaurant.model.Arrange;
import tw.hotel.restaurant.model.Restaurant;
import tw.hotel.restaurant.service.RestaurantDaoService;

@Controller
@RequestMapping(path="/admin")
public class RewriteArrangeController {
	@Autowired
	RestaurantDaoService arrRepo ;
	@Autowired
	RestaurantDaoService resRepo;
	@Autowired
	private LoginService loginService1;

	@PostMapping("/RewriteArrange.controller")
	protected String rewriteArr(Principal pc1,@RequestParam("arrangename")@Nullable String name, @RequestParam("arrangepeople")@Nullable String people,
			@RequestParam("restaurantid")@Nullable String id,@RequestParam("restaurantname")@Nullable String resname, @RequestParam("arrangephone")@Nullable String phone,
			@RequestParam("day")@Nullable String day, @RequestParam("eattime")@Nullable String eattime,@RequestParam("arrangenumber")@Nullable String number
			,@RequestParam("userid")@Nullable String userid,@RequestParam("restaurantprice")@Nullable String restaurantprice,
			@RequestParam("oldPeople")@Nullable String oldPeople,Model m) throws ParseException {

		System.out.println(123);

		String name2 = name;
		String phone2 = phone;

		String day2 = day;
		String eattime2 = eattime;

		String error = "不能輸入空白";
		if (number.equals("")) {
			m.addAttribute("nullError", error);
			
			return "/Restaurant/BackUserArrangeRewrite";
		}
		if (name.equals("")) {
			m.addAttribute("nullError2", error);
			
			return "/Restaurant/BackUserArrangeRewrite";
		}
		if (phone.equals("") ) {
			m.addAttribute("nullError3", error);
			
			return "/Restaurant/BackUserArrangeRewrite";
		}
		if (people.equals("")) {
			m.addAttribute("nullError4", error);
			
			return "/Restaurant/BackUserArrangeRewrite";
		}
		if (day.equals("")) {
			m.addAttribute("nullError5", error);
			
			return "/Restaurant/BackUserArrangeRewrite";
		}
		int id2 = Integer.parseInt(number);
		boolean checkRes = arrRepo.findArrByid(id2);
		if (checkRes == true) {
			m.addAttribute("nullError9", "訂單編號不存在");
			
			return "/Restaurant/BackUserArrangeRewrite";
		}
		int number2 = Integer.parseInt(number);
		//比對日期
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
			int id3 = Integer.parseInt(id);
			List<Restaurant> list = resRepo.findResById(id3);
			m.addAttribute("resturant", list);
			m.addAttribute("name", resname);
			//佩佩參數
			m.addAttribute("userphone", phone);
			m.addAttribute("username", name);
			
			HotelBean UserAllData = loginService1.findUserEmail2(pc1.getName());
			String UserEmail = UserAllData.getUseremail();
			m.addAttribute("useremail", UserEmail);
			List<Arrange> list2 = arrRepo.ArrfindById(number);
			m.addAttribute("arrange", list2);
			
			return "/Restaurant/BackUserArrangeRewrite";
		}

		int oldPeople2 = Integer.parseInt(oldPeople);
		int people2 = Integer.parseInt(people);
		int restaurantid = Integer.parseInt(id);
		int userid2 = Integer.parseInt(userid);
		int restaurantprice2 = Integer.parseInt(restaurantprice);
		int orgrestaurantprice = (restaurantprice2/oldPeople2);
		int reWritePrice = (orgrestaurantprice*people2);
		Arrange ArrBean = new Arrange(number2,name2,phone2,people2, day2,eattime2,resname,restaurantid,userid2,reWritePrice);
		arrRepo.reInsertArr(ArrBean);
		m.addAttribute("success", 1);
		
		return "/Restaurant/BackUserArrangeRewrite";

	}
}
