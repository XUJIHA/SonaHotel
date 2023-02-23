package tw.hotel.gift.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.hotel.coupon.model.Coupon;
import tw.hotel.coupon.service.CouponService;
import tw.hotel.gift.model.giftOrderBean;
import tw.hotel.gift.model.giftOrderItemBean;
import tw.hotel.gift.model.souvenirBean;
import tw.hotel.gift.service.giftOrderService;
import tw.hotel.gift.service.souvenirService;
import tw.hotel.loginlogout.model.HotelBean;
import tw.hotel.loginlogout.service.LoginService;

@Controller
@RequestMapping("/users")
@SessionAttributes(names = "cartMap")
public class buyGiftController {
	
	@Autowired
	private souvenirService sService;
	
	@Autowired
	private LoginService lService;
	
	@Autowired
	private giftOrderService giftOrderService;
	
	//折扣碼
	@Autowired
	CouponService cService;

	@PostMapping("/giftshoppingCart.controller")
	public String shoppingCart(Principal p,@RequestParam("sid") String sid,HttpServletRequest request,
								@RequestParam("sname") String sname,
								@RequestParam("sprice") String sprice,@RequestParam("snum") String snum,
								Model m) {
		HttpSession session = request.getSession();
		giftOrderBean gBean = new giftOrderBean();
		
		
		HotelBean hbean = lService.findUserEmail2(p.getName());
		
		System.out.println("-------------------------------------------------------");
		System.out.println(hbean.toString());
		
		
			
		Integer id = Integer.parseInt(sid);
		double price = Double.parseDouble(sprice);
		//根据id获取商品对象
		souvenirBean sBean = sService.findById(id);
		sname = sBean.getSname();
		price = sBean.getSprice();
		snum = sBean.getSnum();
		System.out.println(sBean);
		//獲取購物車
		Map<Integer, giftOrderItemBean> cartMap = null;
		Object obj = session.getAttribute("cartMap");
		double total = 0;
		giftOrderBean goBean = new giftOrderBean();
		
		goBean.setUserid(hbean.getUserid());
		goBean.setUsername(hbean.getUsername());
		goBean.setUserphone(hbean.getUserphone());
		goBean.setUseremail(hbean.getUseremail());
		goBean.setUseraddress(hbean.getUseraddress());
		//第一次添加商品到購物車
		if (obj == null) {
			cartMap = new HashMap<Integer, giftOrderItemBean>();
			giftOrderItemBean cart = new giftOrderItemBean();
			cart.setSid(id);
			cart.setSname(sname);
			cart.setSprice(price);
			
			cart.setCartnum(1);
			
			
			
			//計算總價
			cartMap.put(id, cart);
			Set<Integer> keys = cartMap.keySet();
			for(int n : keys) {
				giftOrderItemBean car = cartMap.get(n);
				double nprice = car.getSprice();
				int num = cart.getCartnum();
				total += nprice*num;
			}
			goBean.setTotalamount(total);
			//保存商品到MAP
			cartMap.put(id, cart);
			
		}else {
			// 根據商品id 獲取購物車實體類
			cartMap = (HashMap<Integer, giftOrderItemBean>)obj;
			giftOrderItemBean cart = cartMap.get(id);
			
			//如果存在相同商品 --> num+1
			if(cart != null) {
				cart.setCartnum(cart.getCartnum()+1);
				
			}else {
				cart = new giftOrderItemBean();
				cart.setSid(id);
				cart.setSname(sname);
				cart.setSprice(price);
//				cart.setSbean(sBean);
				cart.setCartnum(1);
				//保存商品到MAP
			}
//			//計算總價
			cartMap.put(id, cart);
			Set<Integer> keys = cartMap.keySet();
			for(int n : keys) {
				giftOrderItemBean car = cartMap.get(n);
				double nprice = car.getSprice();
				int num = cart.getCartnum();
				total += nprice*num;
			}
			goBean.setTotalamount(total);
			
		}
//		System.out.println();
		System.out.println("goBean---------");
		System.out.println(goBean.toString());
		//保存到session中
		Set<Integer> keys = cartMap.keySet();
		session.setAttribute("keys", keys);
		session.setAttribute("cartMap", cartMap);
		session.setAttribute("snum", snum);
		m.addAttribute("goBean",goBean);
		return"redirect:/users/showShoppingCar";
	}

	//根據id修改
	@PostMapping("/giftCarUpdateById.controller")
	public String updateById(@RequestParam("sid") int sid,@RequestParam("cartnum")int cartnum,
			HttpServletRequest req,Model m) {
		System.out.println(sid);
		System.out.println(cartnum);
		HttpSession session = req.getSession();
		
		Map<Integer, giftOrderItemBean> cartMap = (Map<Integer, giftOrderItemBean>) session.getAttribute("cartMap");
		Set<Integer> keys = cartMap.keySet();
		for(int key : keys) {
			giftOrderItemBean cart = cartMap.get(key);
			if (cart.getSid() == sid) {
				cart.setCartnum(cartnum);
				double price = cart.getSprice();
//				cart.set
			}
		}
		session.setAttribute("cartMap", cartMap);
		return"redirect:/users/showShoppingCar";
	}
	//根據id刪除
	@PostMapping("/giftCarDeleteById.controller")
	public String deleteBySid(@RequestParam("sid") String sid,HttpServletRequest req,Model m) {
		System.out.println("==============================");
		int id = Integer.parseInt(sid);
		System.out.println(id);
		HttpSession session = req.getSession();

		Map<Integer, giftOrderItemBean> cartMap = (Map<Integer, giftOrderItemBean>) session.getAttribute("cartMap");
		System.out.println(cartMap.size());
		Set<Integer> keys = cartMap.keySet();
		giftOrderItemBean cart = null;
		for(int key : keys) {
			 cart = cartMap.get(key);
			if (cart.getSid() == id) {
				System.out.println("id---------------------------");
				cartMap.remove(key);
			}
		}
		System.out.println(cartMap.size());
		session.setAttribute("cartMap", cartMap);
		return"redirect:/users/showShoppingCar";
	}
//	/*
//	 從session中取出購物車訊息，並轉發到購物車頁面顯示商品訊息
//	 */
	@GetMapping("/showShoppingCar")
	public String showShoppingCar(Principal p,HttpServletRequest req,Model m){
		HttpSession session = req.getSession();
		
		giftOrderBean gBean = new giftOrderBean();
		HotelBean hbean = lService.findUserEmail2(p.getName());
		
		Map<Integer, giftOrderItemBean> cartMap = (Map<Integer, giftOrderItemBean>) session.getAttribute("cartMap");
		
		double total =0;
		if (cartMap == null || cartMap.isEmpty()) {
		    // cartMap is empty
			return "Gift/giftNullCart";
		} else {
			
			Set<Integer> key = cartMap.keySet();
			for(int n : key) {
				giftOrderItemBean car = cartMap.get(n);
				double nprice = car.getSprice();
				int num = car.getCartnum();
				total += nprice*num;
			}
			giftOrderBean goBean = new giftOrderBean();
			
			goBean.setUserid(hbean.getUserid());
			goBean.setUsername(hbean.getUsername());
			goBean.setUserphone(hbean.getUserphone());
			goBean.setUseremail(hbean.getUseremail());
			goBean.setUseraddress(hbean.getUseraddress());
			
			m.addAttribute("cartMap",cartMap);
			m.addAttribute("total",total);
			m.addAttribute("goBean",goBean);
		}
		
		return "Gift/giftCart";
//		return "Gift/show";
//		return "Gift/testshopcar";
//		return "Gift/test";
	}
	
	//折扣碼
	//後端檢查接收前端傳來的code，檢查完回傳結果至前端。
	@ResponseBody
	@PostMapping("/checkcouponcode.controller")
	public String checkCouponCode(@RequestParam("couponCode") String code) {
		return cService.checkCode(code);
	}
	
	//後端取用折扣碼value
//@ResponseBody
//@PostMapping("/users/generateNewOrder.controller")
//public String generateNewOrder(,Principal p,HttpServletRequest req,Model m) {
//		
//HttpSession session = req.getSession();
//		
//		giftOrderBean gBean = new giftOrderBean();
//		HotelBean hbean = lService.findUserEmail2(p.getName());
//		
//		Map<Integer, giftOrderItemBean> cartMap = (Map<Integer, giftOrderItemBean>) session.getAttribute("cartMap");
//		
//		double total =0;
//		if (cartMap == null || cartMap.isEmpty()) {
//		    // cartMap is empty
//			return "Gift/giftNullCart";
//		} else {
//			
//			Set<Integer> key = cartMap.keySet();
//			for(int n : key) {
//				giftOrderItemBean car = cartMap.get(n);
//				double nprice = car.getSprice();
//				int num = car.getCartnum();
//				total += nprice*num;
//			}
//			
//			// 假設訂單價格為1000元
//			int orderPrice = (int)total;
//			
//			//取得totalamount
//			
//			if (code.matches("\\d+$")) {
//				orderPrice -= Integer.parseInt(code);
//			} else {
//				orderPrice *= Double.parseDouble(code);
//			}
//			total = orderPrice;
//			// 訂單價格已被改變
//			giftOrderBean goBean = new giftOrderBean();
//			
//			goBean.setUserid(hbean.getUserid());
//			goBean.setUsername(hbean.getUsername());
//			goBean.setUserphone(hbean.getUserphone());
//			goBean.setUseremail(hbean.getUseremail());
//			goBean.setUseraddress(hbean.getUseraddress());
//			
//			m.addAttribute("cartMap",cartMap);
//			m.addAttribute("total",total);
//			m.addAttribute("goBean",goBean);
//		}
//		
//		
//		return "users/showShoppingCar";
//	}
	
@ResponseBody
@PostMapping("/checkgiftcoupon.controller")
public String processCheckCoupon(@RequestParam("couponCode") String code) {
		String checkResult = cService.checkCode(code);
		return checkResult;
}

@ResponseBody
@PostMapping("/checkgiftcouponvalue.controller")
public String processCheckCouponValue(@RequestParam("couponCode") String code,
									  @RequestParam("totalPrice") String totalStr) {
	
		Coupon coupon = cService.findByCouponCode(code);
		String couponValue = coupon.getCouponValue();
		double total = Double.parseDouble(totalStr);
		if (couponValue.matches("\\d+$")) {
			total -= Integer.parseInt(couponValue);
		} else {
			total *= Double.parseDouble(couponValue);
		}
		int intTotal = (int) total;
		String resTotal = String.valueOf(intTotal);
		
		return resTotal;
}
	

	
	
	
	
	
	
	
	
	

}
