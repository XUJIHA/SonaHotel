package tw.hotel.loginlogout.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import tw.hotel.coupon.model.EmailSender;
import tw.hotel.coupon.model.HtmlContentTemp;
import tw.hotel.loginlogout.model.HotelBean;
import tw.hotel.loginlogout.service.LoginService;

@Controller
public class EmailSenderController {
	
	@Autowired
	private EmailSender emailSender;
	
	@Autowired
	private LoginService loginService1;
	
	
	@GetMapping("/sendeforgetmail.controller")
	public String processSendEmailAction( HttpServletRequest request,@RequestParam("email")String email) throws MessagingException {

		HttpSession session=request.getSession(true);
		String username = (String) session.getAttribute("username");	
		String randomcode = randomCode();		
		String subject = "Sona飯店更改密碼 - 系統發送新密碼";
		String htmlBody = HtmlContentTemp.forgotPasswordEmailContent(username, randomcode);
		session.setAttribute("email", email);
		session.setAttribute("randomcode", randomcode);
		emailSender.sendEmailForgotPassword(email, subject, htmlBody);
		return "/LoginLogout/forgotpassword";
		
	}
	
	
	@PostMapping("/updatePassword.controller")
	public String updatePassword(HttpServletRequest request,@RequestParam("useremail") String useremail,@RequestParam("randomcode") String randomcode, @RequestParam("newuserpassword") String userpassword, @RequestParam("newconfirmuserpassword") String newconfirmuserpassword) {
	    Boolean findUserEmail = loginService1.findUserEmail(useremail);	    
	    if(findUserEmail && randomcode != null && userpassword != null && newconfirmuserpassword != null && userpassword.equals(newconfirmuserpassword)){
	    	String password=new BCryptPasswordEncoder().encode(userpassword);
	    	loginService1.updatePassword(useremail, password);
	    	return "index";
	    } else {
	    	HttpSession session = request.getSession(true);
	    	session.setAttribute("inputError", "確認新密碼錯誤，請重新輸入");
	    	return "/LoginLogout/forgotpassword";
	    }
	}
	
	
	@PostMapping(path ="/register2.controller")
	public String processSendMail(HttpServletRequest request,@RequestParam("username")String username,@RequestParam("userpassword")String userpassword,@RequestParam("confirmpassword")String confirmpassword,@RequestParam("useridentity")String useridentity,@RequestParam("county")String county,@RequestParam("district")String district,
			@RequestParam("email") String useremail,@RequestParam("userphone") String userphone,@RequestParam("userbirthday") String userbirthday,@RequestParam("userregistration") String userregistration,@RequestParam("usergender") String usergender,@RequestParam("usercountry") String usercountry,@RequestParam("address") String address,Model hModel) throws MessagingException  {
		
		String useraddress=county+district+address;
		Map<String, String> errorMsgMap = new HashMap<String, String>();
		hModel.addAttribute("errorMsgMap", errorMsgMap);
		
		Boolean hasIdentity = loginService1.findUserIdentity(useridentity);
		Boolean hasEmail = loginService1.findUserEmail(useremail);
		
		if (username.equals("")) {
			hModel.addAttribute("usernameNull", "必填欄位不可空白!!");
		}
		if (userpassword.equals("")) {
			hModel.addAttribute("userpasswordNull", "必填欄位不可空白!!");
		}
		if (confirmpassword.equals("")) {
			hModel.addAttribute("confirmpasswordNull", "必填欄位不可空白!!");
		}
		if (address.equals("")) {
			hModel.addAttribute("addressNull", "必填欄位不可空白!!");
		}
		if (useridentity.equals("")) {
			hModel.addAttribute("useridentityNull", "必填欄位不可空白!!");
		}
		if (usercountry.equals("")) {
			hModel.addAttribute("usercountryNull", "必填欄位不可空白!!");
		}
		if (useremail.equals("")) {
			hModel.addAttribute("useremailNull", "必填欄位不可空白!!");
		}
		if (userphone.equals("")) {
			hModel.addAttribute("userphoneNull", "必填欄位不可空白!!");
		}
		if (userbirthday.equals("")) {
			hModel.addAttribute("userbirthdayNull", "必填欄位不可空白!!");
		}
		
		if (hasEmail) {
			
			hModel.addAttribute("errorMessageEmail", "Email已存在，請回登入頁面");
			return "LoginLogout/register";
			
		}else if(hasIdentity){
			
			hModel.addAttribute("errorMessageIdentity", "身分證字號(護照號碼)已存在");
			return "LoginLogout/register";
			
		}else if(userpassword != null && confirmpassword != null && userpassword.equals(confirmpassword)) {
			
			HttpSession session=request.getSession(true);
	        session.setAttribute("username",username);
	        session.setAttribute("confirmpassword",confirmpassword);
	        session.setAttribute("userpassword",userpassword);
	        session.setAttribute("useremail",useremail);
	        session.setAttribute("userphone",userphone);
	        session.setAttribute("usergender",usergender);
	        session.setAttribute("usercountry",usercountry);
	        session.setAttribute("useraddress",useraddress);
	        session.setAttribute("useridentity",useridentity);
	        session.setAttribute("userbirthday",userbirthday);

			return "redirect:/sendeVerificationLetter.controller";
			
		}else {
			errorMsgMap.put("LoginError", "密碼錯誤，請重新輸入");
			return "LoginLogout/register";
		}	
	}
	
	@GetMapping(path="/confirmdata.controller")
	public String confirmdataAction(Model model){
		model.addAttribute("userstatus", "啟用");
		return "/LoginLogout/confirmdata";	
	}
	
	@GetMapping(path="/sendeVerificationLetter.controller")
	public String processSendMail(HttpServletRequest request,HotelBean hb ,Model model,String code, String expiryDate, String userName) throws MessagingException {
		model.addAttribute("userstatus", "未驗證");
		HttpSession session=request.getSession(true);
		String username = (String) session.getAttribute("username");
		String email = (String) session.getAttribute("useremail");

		String subject = "Sona飯店驗證信";
		String htmlBody = HtmlContentTemp.createRegistEmailContent(username);
		
		emailSender.sendEmailForRegist(email, subject, htmlBody);
		return "/index";
	}
	
	
	
	
	
	public String randomCode(){
        StringBuilder str = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < 6; i++) {
            str.append(random.nextInt(10));
        }
        return str.toString();
    }

}
