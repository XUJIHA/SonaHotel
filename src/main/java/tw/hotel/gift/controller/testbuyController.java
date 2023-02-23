package tw.hotel.gift.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.hotel.gift.model.giftOrderBean;
import tw.hotel.gift.model.giftShoppingCart;
import tw.hotel.gift.model.souvenirBean;
import tw.hotel.gift.service.souvenirService;
import tw.hotel.loginlogout.model.HotelBean;
import tw.hotel.loginlogout.service.LoginService;

//@Controller
//@SessionAttributes(names = "cartMap")
public class testbuyController {
//	@Autowired
//	private souvenirService sService;
//	
//	@Autowired
//	private LoginService lService;
//
//	@PostMapping("/giftshoppingCart.controller")
//	public String shoppingCart(@RequestParam("sid") String sid,HttpServletRequest request,
//								@RequestParam("sname") String sname,
//								@RequestParam("sprice") String sprice,
//								Model m) {
//		HttpSession session = request.getSession();
//		//修改session的存在時間為1800s
//        session.setMaxInactiveInterval(1800);
//		int userId = (int)session.getAttribute("userId");
//		List<HotelBean>listHotelBeans = lService.findById(userId);
//		
//		HotelBean hbean = null;
//		for(HotelBean h:listHotelBeans ) {
//			hbean = h;
//		}
//		System.out.println("-------------------------------------------------------");
//		System.out.println(hbean.toString());
//		
//		
////		giftOrderBean giftOrderBean = new giftOrderBean();
////		HotelBean user = list.get(0);
////		giftOrderBean.setUserid(userId);
////		giftOrderBean.setUsername(user.getUsername());
////		giftOrderBean.setUseremail(user.getUseremail());
////		giftOrderBean.setUserphone(user.getUserphone());
//		
//		
//		
//		Integer id = Integer.parseInt(sid);
//		double price = Double.parseDouble(sprice);
//		//根据id获取商品对象
//		souvenirBean sBean = sService.findById(id);
//		sname = sBean.getSname();
//		price = sBean.getSprice();
//		
//		System.out.println(sBean);
//		//獲取購物車
//
//		Map<Integer, giftOrderBean> cartMap = null;
//		Object obj = session.getAttribute("cartMap");
//		double total = 0;
//		//第一次添加商品到購物車
//		if (obj == null) {
//			cartMap = new HashMap<Integer, giftOrderBean>();
//			giftOrderBean cart = new giftOrderBean();
//			cart.setSid(id);
//			cart.setSname(sname);
//			cart.setSprice(price);
//			cart.setCartnum(1);
//			Integer num = cart.getCartnum();
//			//計算總價
////			cartMap.put(id, cart);
//			Set<Integer> keys = cartMap.keySet();
//			for(int n : keys) {
//				giftOrderBean car = cartMap.get(n);
//				double prices = price * num;
////				total += prices;
//			}
//			//保存商品到MAP
//			cartMap.put(id, cart);
//		}else {
//			// 根據商品id 獲取購物車實體類
//			cartMap = (HashMap<Integer, giftOrderBean>)obj;
//			giftOrderBean cart = cartMap.get(id);
//			
//			//如果存在相同商品 --> num+1
//			if(cart != null) {
//				cart.setCartnum(cart.getCartnum()+1);
//				
//			}else {
//				cart = new giftOrderBean();
//				cart.setSid(id);
//				cart.setSname(sname);
//				cart.setSprice(price);
//				cart.setCartnum(1);
//				Integer num = cart.getCartnum();
//				//保存商品到MAP
//			}
//			//計算總價
//			cartMap.put(id, cart);
//			Set<Integer> keys = cartMap.keySet();
//			for(int n : keys) {
//				giftOrderBean car = cartMap.get(n);
//				double prices = car.getSubtotal();
//				total += prices;
//			}
//			
//		}
//		//保存到session中
//		Set<Integer> keys = cartMap.keySet();
//		session.setAttribute("keys", keys);
//		session.setAttribute("cartMap", cartMap);
//		m.addAttribute("total", total);
//		m.addAttribute("hb",hbean);
//		return"redirect:/showShoppingCar";
//	}
//	//根據id修改
//	@PostMapping("/giftCarUpdateById.controller")
//	public String updateById(@RequestParam("sid") int sid,@RequestParam("cartnum")int cartnum,
//			HttpServletRequest req,Model m) {
//		System.out.println(sid);
//		System.out.println(cartnum);
//		HttpSession session = req.getSession();
//		//修改session的存在時間為1800s
//        session.setMaxInactiveInterval(1800);
//		
//		Map<Integer, giftShoppingCart> cartMap = (Map<Integer, giftShoppingCart>) session.getAttribute("cartMap");
//		Set<Integer> keys = cartMap.keySet();
//		for(int key : keys) {
//			giftShoppingCart cart = cartMap.get(key);
//			if (cart.getSbean().getSid() == sid) {
////				cartMap.remove(key);
//				cart.setCartnum(cartnum);
//				double price = cart.getSbean().getSprice();
//				cart.setSubtotal(cartnum*price);
//			}
//		}
//		double total =0;
//		Set<Integer> key = cartMap.keySet();
//		for(int n : keys) {
//			giftShoppingCart car = cartMap.get(n);
//			double prices = car.getSubtotal();
//			total += prices;
//		}
//		System.out.println("=======================================================total");
//		System.out.println(total);
////		session.setAttribute("keys", key);
//		session.setAttribute("cartMap", cartMap);
//		m.addAttribute("total",total);
////		return "redirect:/giftgetShoppingCar";
//		return"redirect:/showShoppingCar";
//	}
//	//根據id刪除
//	@PostMapping("/giftCarDeleteById.controller")
//	public String deleteBySid(@RequestParam("sid") String sid,HttpServletRequest req,Model m) {
//		System.out.println("==============================");
//		Integer id = Integer.parseInt(sid);
//		HttpSession session = req.getSession();
//		//修改session的存在時間為1800s
//        session.setMaxInactiveInterval(1800);
//		
//		double total = 0;
//		Map<Integer, giftShoppingCart> cartMap = (Map<Integer, giftShoppingCart>) session.getAttribute("cartMap");
//		Set<Integer> keys = cartMap.keySet();
//		giftShoppingCart cart = new giftShoppingCart();
//		for(int key : keys) {
//			 cart = cartMap.get(key);
//			if (cart.getSbean().getSid() == id) {
//				cartMap.remove(key);
//				
//			}
//		}
//		
//		
//
////		session.setAttribute("cartMap", cartMap);
//		session.setAttribute("cartMap", cartMap);
////		if()
//			//根据id获取商品对象
////			souvenirBean sBean = sService.findById(id);
////		return "redirect:/giftgetShoppingCar";
//		return "redirect:/showShoppingCar";
//	}
//	/*
//	 從session中取出購物車訊息，並轉發到購物車頁面顯示商品訊息
//	 */
//	@GetMapping("/showShoppingCar")
//	public String showShoppingCar(HttpServletRequest req,Model m){
//		HttpSession session = req.getSession();
//		//修改session的存在時間為1800s
//        session.setMaxInactiveInterval(1800);
//		Map<Integer, giftShoppingCart> cartMap = (Map<Integer, giftShoppingCart>) session.getAttribute("cartMap");
//		
//		double total =0;
//		Set<Integer> key = cartMap.keySet();
//		for(int n : key) {
//			giftShoppingCart car = cartMap.get(n);
//			double prices = car.getSubtotal();
//			total += prices;
//		}
//		int userId = (int)session.getAttribute("userId");
//		List<HotelBean>listHotelBeans = lService.findById(userId);
//		
//		HotelBean hbean = null;
//		for(HotelBean h:listHotelBeans ) {
//			hbean = h;
//		}
//		m.addAttribute("cartMap",cartMap);
//		m.addAttribute("total",total);
//		m.addAttribute("hb",hbean);
//		return "Gift/giftCart";
//	}
//
//	
//	
//	
//	}
	
}
