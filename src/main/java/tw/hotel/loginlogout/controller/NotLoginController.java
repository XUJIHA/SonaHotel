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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.wf.captcha.GifCaptcha;
import com.wf.captcha.utils.CaptchaUtil;

import tw.hotel.loginlogout.model.HotelBean;
import tw.hotel.loginlogout.service.AuthUserDetialService;
import tw.hotel.loginlogout.service.LoginService;

@Controller
@SessionAttributes(names={"useremail", "username"})
public class NotLoginController {

	@Autowired
	private LoginService loginService1;
	
	@Autowired
	private AuthUserDetialService auservice;
	
	@GetMapping(path ="/originorigin.controller")
	public String originoriginAction()  {
		return "index";
	}
	
	@GetMapping(value ="/login/welcome")
	public String alreadyindexAction(Principal pc1,Model hModel)  {
		int loginCount = auservice.getLoginCount();
		System.out.println(loginCount+"----------");
		hModel.addAttribute("loginCount", loginCount);
		HotelBean UserAllData=loginService1.findUserEmail2(pc1.getName());
		String UserEmail=UserAllData.getUseremail();
		String UserName=UserAllData.getUsername();
		hModel.addAttribute("username", UserName);
		hModel.addAttribute("useremail", UserEmail);
		return "LoginLogout/alreadyindex";
	}
	
	@PostMapping(path ="/register1.controller")
	public String registerAction1(String userstatus)  {
		return "LoginLogout/register";
	}
	
	@GetMapping(path="/register1.controller")
	public String registerBackAction(){
		return "/LoginLogout/register";	
	}
	
	@ResponseBody
	@GetMapping("/captcha")
	public String captcha(HttpServletRequest request, HttpServletResponse response,Model m) throws Exception{
		GifCaptcha gifCaptcha = new GifCaptcha(130,48,4);
	    CaptchaUtil.out(gifCaptcha, request, response);
	    String verCode = gifCaptcha.text().toLowerCase();	    
		HttpSession session = request.getSession(true);
				
	    session.setAttribute("verCode", verCode);
    
	    return verCode;
	}
	
	@ResponseBody
	@GetMapping("/captcha2")
	public String captcha2(HttpServletRequest request, HttpServletResponse response,Model m) throws Exception{
		    
		HttpSession session = request.getSession(true);
		
		String attribute =(String) session.getAttribute("verCode");
	    return attribute;
	}
	
	
	@PostMapping(path ="/successRegister.controller")
	public String confirmdataAction(@RequestParam("username")String username,@RequestParam("userpassword")String userpassword,@RequestParam("confirmpassword")String confirmpassword,@RequestParam("useridentity")String useridentity,@RequestParam("email") String useremail,@RequestParam("userphone") String userphone,
			@RequestParam("userbirthday") String userbirthday,@RequestParam("userregistration") String userregistration,@RequestParam("usergender") String usergender,@RequestParam("usercountry") String usercountry,@RequestParam("address") String useraddress,@RequestParam("userstatus") String userstatus,RedirectAttributes rd)  {
		
		String password=new BCryptPasswordEncoder().encode(userpassword);
		
		HotelBean hb=new HotelBean(username,password,useremail, userphone,usergender,usercountry,useraddress,useridentity,
				userbirthday,userregistration,userstatus);
		
		loginService1.addhotel(hb);
        rd.addFlashAttribute("user", hb);
        
        return "redirect:sendcouponforregist.controller";
	}
	
}
