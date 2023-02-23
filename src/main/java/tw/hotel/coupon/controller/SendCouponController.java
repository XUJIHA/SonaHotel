package tw.hotel.coupon.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import tw.hotel.coupon.model.CouponUser;
import tw.hotel.coupon.service.SendCouponService;
import tw.hotel.loginlogout.model.HotelBean;

@Controller
@RequestMapping("/admin")
public class SendCouponController {

	@Autowired
	private SendCouponService scService;

	@GetMapping("/showallcouponusers.controller")
	public String processShowAllCouponUser(Model m) {
		List<CouponUser> couponUsers = scService.fetchData();
		m.addAttribute("users", couponUsers);
		return "roomType/backoffice/sendCoupon";
	}

	@PostMapping("/sendcoupons.controller")
	public String processSendCoupons(@RequestBody Map<String, Object> data, Model m) {
		scService.sendCoupons(data);
		return "roomType/backoffice/sendCoupon";
	}

	@PostMapping("/sendcouponsforall.controller")
	public String processSendCouponsForAll(@RequestBody Map<String, Object> data, Model m) {
		scService.sendCouponsForAll(data);
		return "roomType/backoffice/sendCoupon";
	}

}
