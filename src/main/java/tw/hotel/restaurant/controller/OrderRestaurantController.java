package tw.hotel.restaurant.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.hotel.loginlogout.model.HotelBean;
import tw.hotel.loginlogout.service.LoginService;
import tw.hotel.restaurant.model.Arrange;
import tw.hotel.restaurant.model.Restaurant;
import tw.hotel.restaurant.service.RestaurantDaoService;

@Controller

public class OrderRestaurantController {
	@Autowired
	RestaurantDaoService resRepo;
	
	
	@Autowired
	private LoginService loginService1;

	@PostMapping("/users/OrderRestaurantController")
	protected String searchResid(Principal pc1,@RequestParam("restaurantid") @Nullable String id,
			@RequestParam("restaurantphone") @Nullable String phone, @RequestParam("restauranttype") @Nullable String type,
			@RequestParam("restaurantname") @Nullable String name,
			Model m) {
		String resturantId = id;
		String error = "不能輸入空白";
		String resturantName = name;
		if (id == "") {
			m.addAttribute("nullError2", error);

			return "/Restaurant/SearchRes";
		}
		int id2 = Integer.parseInt(resturantId);
		List<Restaurant> list = resRepo.findResById(id2);
		m.addAttribute("resturant", list);
		m.addAttribute("name", resturantName);
		//抓取用戶資料
		HotelBean UserAllData = loginService1.findUserEmail2(pc1.getName());
		
		Integer UserId=UserAllData.getUserid();
		String UserEmail = UserAllData.getUseremail();
		String UserName=UserAllData.getUsername();
		String UserPhone=UserAllData.getUserphone();
		
		m.addAttribute("userphone", UserPhone);
		m.addAttribute("username", UserName);
		m.addAttribute("useremail", UserEmail);
		m.addAttribute("userid", UserId);
		
		System.out.println(list);

		return "/Restaurant/OrderRestaurant";
	}
	
	@PostMapping("/orderstate3")
	@ResponseBody
	protected String OrderState3(@RequestParam("selectedOption") String selectedOption,
			@RequestParam("radioValue") String radioValue, @RequestParam("dateValue") String dateValue,
			@RequestParam("ResName") String ResName,Model m) {
		
		System.out.println("selectedOption: " + selectedOption);
		System.out.println("radioValue: " + radioValue);
		System.out.println("dateValue: " + dateValue);
		List<Arrange> list =new ArrayList<>();
		List<Arrange> arrange = resRepo.orderstate(radioValue, dateValue,ResName);
		for (Arrange arrange2 : arrange) {
			list.add(arrange2);
		}
//		System.out.println(list.toString());
		
		int a=5; //包廂3
		int b=3;//包廂6
		int c=2;//包廂10
		
		for(int i=0 ;i<list.size();i++) {
			if((list.get(i)).getPeople()==3) {
				a=a-1;
			}
			
//		System.out.println("人數"+(list.get(i)).getPeople());
		}
		
		if(a==0 || a<0) {
			return "1";
		}
		
		else {
			System.out.println("3控制器還有空位");
		}
		return null;
	}
	@PostMapping("/orderstate6")
	@ResponseBody
	protected String OrderState6(@RequestParam("selectedOption") String selectedOption,
			@RequestParam("radioValue") String radioValue, @RequestParam("dateValue") String dateValue,
			@RequestParam("ResName") String ResName,Model m) {
		System.out.println("selectedOption: " + selectedOption);
		System.out.println("radioValue: " + radioValue);
		System.out.println("dateValue: " + dateValue);
		List<Arrange> list =new ArrayList<>();
		List<Arrange> arrange = resRepo.orderstate(radioValue, dateValue,ResName);
		for (Arrange arrange2 : arrange) {
			list.add(arrange2);
		}
//		System.out.println(list.toString());
		
		int a=5; //包廂3
		int b=3;//包廂6
		int c=2;//包廂10
		
		for(int i=0 ;i<list.size();i++) {
			if((list.get(i)).getPeople()==6) {
				b=b-1;
			}
			
//		System.out.println("人數"+(list.get(i)).getPeople());
		}
		System.out.println(b);
		if(b==0 || b<0) {
			return "2";
		}
		
		else {
			System.out.println("6控制器還有空位");
			
		}
		return null;
	}
	@PostMapping("/orderstate10")
	@ResponseBody
	protected String OrderState10(@RequestParam("selectedOption") String selectedOption,
			@RequestParam("radioValue") String radioValue, @RequestParam("dateValue") String dateValue,
			@RequestParam("ResName") String ResName,Model m) {
		System.out.println("selectedOption: " + selectedOption);
		System.out.println("radioValue: " + radioValue);
		System.out.println("dateValue: " + dateValue);
		List<Arrange> list =new ArrayList<>();
		List<Arrange> arrange = resRepo.orderstate(radioValue, dateValue,ResName);
		for (Arrange arrange2 : arrange) {
			list.add(arrange2);
		}
//		System.out.println(list.toString());
		
		int a=5; //包廂3
		int b=3;//包廂6
		int c=2;//包廂10
		
		for(int i=0 ;i<list.size();i++) {
			if((list.get(i)).getPeople()==10) {
				c=c-1;
			}
			
//		System.out.println("人數"+(list.get(i)).getPeople());
		}
		
		if(c==0 || c<0) {
			return "3";
		}
		
		else {
			System.out.println("10控制器還有空位");
		}
		return null;
	}
	
	
}
