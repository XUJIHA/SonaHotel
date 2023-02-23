package tw.hotel.coupon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import tw.hotel.coupon.service.SendCouponService;
import tw.hotel.loginlogout.model.HotelBean;

@Controller
public class SendCouponForRegist {
	
	@Autowired
	private SendCouponService scService;
	
	@GetMapping("/sendcouponforregist.controller")
	public String processSendCouponForRegist(@ModelAttribute("user")@Nullable HotelBean user, Model m) {
		scService.sendCouponForRegist(user);
		m.addAttribute("successMsg", "註冊成功!! 請登入");
		return "index";
	}
	
}
