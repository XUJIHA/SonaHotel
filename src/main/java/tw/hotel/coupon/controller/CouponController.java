package tw.hotel.coupon.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.hotel.coupon.model.Coupon;
import tw.hotel.coupon.service.CouponService;

@Controller
@RequestMapping("/admin")
public class CouponController {
	
	@Autowired
	private CouponService cService;
	
	@GetMapping("/showallcoupons.controller")
	public String processShowAll(Model m) {
		List<Coupon> coupons = cService.findAll();
		m.addAttribute("coupons", coupons);
		return "roomType/backoffice/coupon";
	}
	
	@PostMapping("/insertcoupon.controller")
	public String processInsertCoupon(@RequestParam("selectType") String couponType,
									  @RequestParam("selectValue") String couponValue,
									  @RequestParam("couponName") String couponName,
									  @RequestParam("expiryDate") String expiryDate) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date parsedExpiryDate = null;
		try {
			parsedExpiryDate = sdf.parse(expiryDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		cService.generateCoupon(couponType, couponValue, couponName, parsedExpiryDate);
		return "redirect:showallcoupons.controller";
	}
	
	@PostMapping("/deletecoupon.controller")
	public String processDeleteCoupon(@RequestParam("couponId") String couponId) {
		int parsedCouponId = Integer.parseInt(couponId);
		cService.deleteById(parsedCouponId);
		return "redirect:showallcoupons.controller";
	}
	
	@PostMapping("/deletecoupons.controller")
	public String processDeleteCoupon(@RequestBody List<String> couponIds) {
		cService.deleteByIds(couponIds);
		return "redirect:showallcoupons.controller";
	}
	
	@ResponseBody
	@PostMapping("/updatecouponstatus.controller")
	public String processUpdateCouponStatus(@RequestParam("couponId") String couponIdStr,
											@RequestParam("couponStatus") String couponStatusStr) {
		System.out.println(couponIdStr + "  " + couponStatusStr);
		int couponId = Integer.parseInt(couponIdStr);
		if (("未使用").equals(couponStatusStr)) {
			cService.updateStatusById(couponId, 0);
			return "0";
		} else {
			return "1";
		}
	}
	
}
