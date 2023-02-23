package tw.hotel.loginlogout.controller;

import java.security.Principal;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tw.hotel.loginlogout.model.HotelBean;
import tw.hotel.loginlogout.service.AuthUserDetialService;
import tw.hotel.loginlogout.service.LoginService;



@Controller
@RequestMapping(path="/users")
public class UserLoginController {

	@Autowired
	private LoginService loginService1;
	 
	@PostMapping(path ="/origin.controller")
	public String originAction(Principal pc1,Model hModel)  {
		HotelBean UserAllData=loginService1.findUserEmail2(pc1.getName());
		String UserEmail=UserAllData.getUseremail();
		hModel.addAttribute("useremail", UserEmail);
		return "LoginLogout/alreadyindex";
	}
	@GetMapping(path ="/origin.controller")
	public String originAction2(Principal pc1,Model hModel)  {
		
		HotelBean UserAllData=loginService1.findUserEmail2(pc1.getName());
		String UserEmail=UserAllData.getUseremail();
		String UserName=UserAllData.getUsername();
		hModel.addAttribute("useremail", UserEmail);
		hModel.addAttribute("username", UserName);
		return "LoginLogout/alreadyindex";
	}
	
	
	@GetMapping(path ="/membercenter.controller")
	public String testAction(Principal pc1,Model hModel)  {
		HotelBean UserAllData=loginService1.findUserEmail2(pc1.getName());
		Integer UserId=UserAllData.getUserid();
		String UserEmail=UserAllData.getUseremail();
		String UserName=UserAllData.getUsername();
		String UserPassword=UserAllData.getUserpassword();
		String UserIdentity=UserAllData.getUseridentity();
		String UserPhone=UserAllData.getUserphone();
		String UserGender=UserAllData.getUsergender();
		String UserCountry=UserAllData.getUsercountry();
		String UserAddress=UserAllData.getUseraddress();
		String UserBirthday=UserAllData.getUserbirthday();
		String UserRegistration=UserAllData.getUserregistration();
		String UserStatus = UserAllData.getUserstatus();
		
		hModel.addAttribute("userid", UserId);
		hModel.addAttribute("useremail", UserEmail);
		hModel.addAttribute("username", UserName);
		hModel.addAttribute("userpassword", UserPassword);
		hModel.addAttribute("useridentity", UserIdentity);
		hModel.addAttribute("userphone", UserPhone);
		hModel.addAttribute("usergender", UserGender);
		hModel.addAttribute("usercountry", UserCountry);
		hModel.addAttribute("useraddress", UserAddress);
		hModel.addAttribute("userbirthday", UserBirthday);
		hModel.addAttribute("userregistration", UserRegistration);
		hModel.addAttribute("userstatus", UserStatus);
		return "LoginLogout/profile";
	}
	
	
	@RequestMapping(path ="/searchmember.controller", method = RequestMethod.POST)
	public String searchAction(Principal pc1,@ModelAttribute("hotelBean") HotelBean hb,Model hModel)  {
		
		List<HotelBean> classlist = loginService1.selecthotel();
		hModel.addAttribute("classList", classlist);
		
		HotelBean UserAllData=loginService1.findUserEmail2(pc1.getName());
		Integer UserId=UserAllData.getUserid();
		String UserEmail=UserAllData.getUseremail();
		String UserName=UserAllData.getUsername();
		String UserPassword=UserAllData.getUserpassword();
		String UserIdentity=UserAllData.getUseridentity();
		String UserPhone=UserAllData.getUserphone();
		String UserGender=UserAllData.getUsergender();
		String UserCountry=UserAllData.getUsercountry();
		String UserAddress=UserAllData.getUseraddress();
		String UserBirthday=UserAllData.getUserbirthday();
		String UserRegistration=UserAllData.getUserregistration();
		String UserStatus = UserAllData.getUserstatus();
		
		hModel.addAttribute("userid", UserId);
		hModel.addAttribute("useremail", UserEmail);
		hModel.addAttribute("username", UserName);
		hModel.addAttribute("userpassword", UserPassword);
		hModel.addAttribute("useridentity", UserIdentity);
		hModel.addAttribute("userphone", UserPhone);
		hModel.addAttribute("usergender", UserGender);
		hModel.addAttribute("usercountry", UserCountry);
		hModel.addAttribute("useraddress", UserAddress);
		hModel.addAttribute("userbirthday", UserBirthday);
		hModel.addAttribute("userregistration", UserRegistration);
		hModel.addAttribute("userstatus", UserStatus);
		
		return "LoginLogout/select";
	}
	
	
	
	@GetMapping(path ="/logout.controller")
	public String searchAction(HttpServletResponse response, HttpServletRequest request)  {
		HttpSession session = request.getSession(false);// 防止建立Session
		if (session == null) {
			return "index";
		}
		int logOutStatus = 1;
		request.setAttribute("logOutStatus", logOutStatus);
		session.removeAttribute("useremail");

		return "index";
	}
	
	@PostMapping(path ="/logout.controller")
	public String searchAction2(HttpServletResponse response, HttpServletRequest request)  {
		HttpSession session = request.getSession(false);// 防止建立Session
		if (session == null) {
			return "index";
		}
		int logOutStatus = 1;
		request.setAttribute("logOutStatus", logOutStatus);
		session.removeAttribute("useremail");

		return "index";
	}
	
//	@PostMapping(path ="/insertmember2.controller")
//	public String insertAction2(Principal pc1,@RequestParam("username")String username,@RequestParam("userpassword")String userpassword,@RequestParam("confirmpassword")String confirmpassword,@RequestParam("useridentity")String useridentity,@RequestParam("county")String county,@RequestParam("district")String district,
//			@RequestParam("useremail") String useremail,@RequestParam("userphone") String userphone,@RequestParam("userbirthday") String userbirthday,@RequestParam("userregistration") String userregistration,@RequestParam("usergender") String usergender,@RequestParam("usercountry") String usercountry,@RequestParam("address") String address,Model m)  {
//
//		String useraddress=county+district+address;
//		Map<String, String> errorMsgMap = new HashMap<String, String>();
//		m.addAttribute("errorMsgMap", errorMsgMap);
//		
//		HotelBean UserAllData=loginService1.findUserEmail(pc1.getName());
//		String UserEmail=UserAllData.getUseremail();
//		System.out.println(UserAllData);
//		System.out.println(UserEmail);
//		m.addAttribute("useremail", UserEmail);
//		
//		if (userpassword != null && confirmpassword != null && userpassword.equals(confirmpassword)) {
//			HotelBean hb=new HotelBean(username,userpassword,useremail, userphone,usergender,usercountry,useraddress,useridentity,
//					userbirthday,userregistration);
//			loginService1.addhotel(hb);
//			return "redirect:searchmember.controller";
//			
//		} else {
//			errorMsgMap.put("LoginError", "密碼錯誤，請重新輸入");
//			return "LoginLogout/insert";
//		}
//		
//		
//	}
	
	@GetMapping(path ="/memberfindById.controller")
	public String findByIdAction(@RequestParam("userid") int userid,Model hModel)  {
		List<HotelBean> classlist =loginService1.findById(userid);
		hModel.addAttribute("classList", classlist);
		
		return "LoginLogout/update";
		
	}
	
	
	@PostMapping(path ="/updatemember.controller") 
	public String updateAction(Principal pc1,@RequestParam("userid") int userid,@RequestParam("username")String username,@RequestParam("userpassword")String userpassword,@RequestParam("useridentity")String useridentity,@RequestParam("userstatus") String userstatus,
			@RequestParam("useremail") String useremail,@RequestParam("userphone") String userphone,@RequestParam("userbirthday") String userbirthday,@RequestParam("userregistration") String userregistration,@RequestParam("usergender") String usergender,@RequestParam("usercountry") String usercountry,@RequestParam("useraddress") String useraddress,Model hModel) {
		String password=new BCryptPasswordEncoder().encode(userpassword);
		HotelBean hb=new HotelBean(userid,username,password,useremail, userphone,usergender,usercountry,useraddress,useridentity,
				userbirthday,userregistration,userstatus);
		HotelBean UserAllData=loginService1.findUserEmail2(pc1.getName());
		String UserEmail=UserAllData.getUseremail();
		String UserId=UserAllData.getUseremail();
		hModel.addAttribute("useremail", UserEmail);
		hModel.addAttribute("userid", UserId);
		loginService1.updatehotel(hb);	
		
		return "redirect:/users/mymembercenter.controller";
	}
	
	
	@PostMapping("/deletemember.controller") 
	public String processDeleteAction(@RequestParam("userid") int userid) {
		loginService1.deleteById(userid);
		return "redirect:searchmember.controller";
	}
	
	
	
	
	
	}	
	
	
	

