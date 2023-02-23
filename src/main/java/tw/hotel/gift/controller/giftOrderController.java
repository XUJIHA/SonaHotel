package tw.hotel.gift.controller;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.configurationprocessor.json.JSONArray;
import org.springframework.boot.configurationprocessor.json.JSONException;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.cglib.core.MethodInfoTransformer;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutALL;
import tw.hotel.coupon.model.EmailSender;
import tw.hotel.coupon.model.HtmlContentTemp;
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
public class giftOrderController {
	@Autowired
	private souvenirService sService;
	
	@Autowired
	private LoginService lService;
	
	@Autowired
	private giftOrderService oService;
	
	@Autowired
	private ObjectMapper objectMapper;
	
	@Autowired
	private CouponService cService;
	@Autowired
	EmailSender emailSender;
	
	SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
	
	public static AllInOne all; 
	SimpleDateFormat sd2 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

	@PostMapping("/checorder.controller")
	@ResponseBody
	@Transactional
	public Object inserOrderAndOrderItem(@RequestBody Map<String,String> map,Model m,HttpServletRequest req) throws JSONException  {
		System.out.println("----------------123");
//			Set<String> keys = map.keySet();
//			for(String key : keys) {
//				System.out.println(key);
//
////				System.out.println("================");
////				System.out.println(map.get(key));
//				
//			}
			HttpSession session = req.getSession();
			giftOrderBean gBean = new giftOrderBean();
			
			double total=0.0;
			String newtotal ="";
			int totalint =0;
			String totalString="";
			 
			String userData = map.get("user");
			JSONArray userArray = new JSONArray(userData);
			
			String couponCode = "";
			
			for (int i = 0; i < userArray.length(); i++) {
			    JSONObject object = userArray.getJSONObject(i);
			   newtotal = object.getString("newtotal");
			    String newuserid = object.getString("newuserid");
			    String newusername = object.getString("newusername");
			    String newaddr = object.getString("newaddr");
			    String newuphone = object.getString("newuphone");
			    String newemail = object.getString("newemail");
			    couponCode = object.getString("couponCode");
			    Date orderdate = new Date();
			    java.sql.Date sorderdate = new java.sql.Date(orderdate.getTime());
			    gBean.setOrderdate(sorderdate);
			    
			    int uid = Integer.parseInt(newuserid);
				gBean.setUserid(uid);
				gBean.setUsername(newusername);
				gBean.setUseremail(newemail);
				gBean.setUserphone(newuphone);
				gBean.setUseraddress(newaddr);
				total = Double.parseDouble(newtotal);
				gBean.setTotalamount(total);
				
				
				
				
			    System.out.println(newtotal);
			    System.out.println(newuserid);
			    System.out.println(newusername);
			    System.out.println(newaddr);
			    System.out.println(newuphone);
			    System.out.println(newemail);
			    
			    
//			    oService.InsertgiftOrder(gBean);
			    // 您可以在此處繼續操作 sname 和 sprice
			}
			
			
			
			String ordersData = map.get("orders");
			JSONArray ordersArray = new JSONArray(ordersData);
			
			String[] allname = {};
			List<String> namesList = new ArrayList<>();
			
			String[] allnum = {};
//			List<String> numList = new ArrayList<>();
			
			List<giftOrderItemBean> orderList = new ArrayList<>();
			for (int i = 0; i < ordersArray.length(); i++) {
//				allname = object.getString("sname");
				
				JSONObject object = ordersArray.getJSONObject(i);
				namesList.add(object.getString("sname"));
				namesList.add(object.getString("cartnum"));
				
				giftOrderItemBean goBean = new giftOrderItemBean();
			    
			    String sname = object.getString("sname");
			    String sprice = object.getString("sprice");
			    String cartnum = object.getString("cartnum");
			    String sid = object.getString("sid");
			    
			    
			    System.out.println(sname);
			    System.out.println(sprice);
			    System.out.println(cartnum);
			    System.out.println(sid);
			    
			    
				goBean.setGiftOrderBean(gBean);
				int gid = Integer.parseInt(sid);
				
				
				goBean.setSid(gid);
				goBean.setSname(sname);
				double gprice = Double.parseDouble(sprice);
				goBean.setSprice(gprice);
				int carnum = Integer.parseInt(cartnum);
				System.out.println("開始扣數量--------------");
				souvenirBean souvenirBean = sService.findById(gid);
				//snum-cartnum
				String snumstr = souvenirBean.getSnum();
				int snum = Integer.parseInt(snumstr);
				int newnum = snum - carnum;
				System.out.println("扣完的數量"+newnum);
				String newnumstr = Integer.toString(newnum);
				souvenirBean.setSnum(newnumstr);
//				souvenirBean.setSname(sname);
//				souvenirBean.setSprice(gprice);
				System.out.println(souvenirBean.toString());
				System.out.println("開始更新----------------");
				sService.updateSouvenir(souvenirBean);
				
				goBean.setCartnum(carnum);
				
				orderList.add(goBean);
				
				System.out.println("新增訂單明細-----------------");
				oService.InsertgiftItem(goBean);
				
			}
			allname = namesList.toArray(new String[0]);
			gBean.setGiftOrderItemBeans(orderList);
			System.out.println("--------------------------");
//			System.out.println(orderList.size());
			System.out.println("新增訂單-----------------");
			oService.InsertgiftOrder(gBean);
			totalint=(int)(total);
			totalString=String.valueOf(totalint);
			System.out.println(totalint);
			System.out.println(totalString);
//			int price = Double.parseDouble(total);
			System.out.println("-----------------price");
//			System.out.println(price);
//			String pricessString = Integer.toString(price);
			System.out.println("進入交易-------------------");
			String[] item = {};
			
			all = new AllInOne("");
	        AioCheckOutALL obj = new AioCheckOutALL();
	        obj.setMerchantTradeNo("NO" + (int) (Math.random() * 100000) + 1 + "100");
	        obj.setMerchantTradeDate(sd2.format(new Date()));
	        obj.setTotalAmount(totalString);
	        obj.setTradeDesc("test Description");
	        String name ="";
//	        String nbsp ="         ";
	        
	        String spaces = " ";
//	        for (int i = 0; i < 6; i++) {
//	            spaces += "  ";
//	        }
	        for (int i = 0; i < allname.length; i++) {
	        	
	        	
				if(i == 0 ) {
					 name += allname[i]+spaces;
//					 num += allname[i];
							 
					 
					 
	        	}else {
	        		name += "#" + allname[i];
	        	}
			   
			    
			    
			}System.out.println("-------------------name-----------------");
			
			//刪除session
			session.removeAttribute("cartMap");
	        System.out.println(name);
	        obj.setItemName(name);
	        obj.setReturnURL("http://211.23.128.214:5000");
	        obj.setNeedExtraPaidInfo("N");
//	        obj.setOrderResultURL("http://localhost:8081/users/showgorder.controller");
	        obj.setClientBackURL("http://localhost:8081/users/mymembercenter.controller");
	        String form = all.aioCheckOut(obj, null);
	        System.out.println(form+"--------------------");
	        String htmlBody = HtmlContentTemp.createGiftOrderContent(gBean);
	        emailSender.sendGiftOrderEmail(gBean.getUseremail(), htmlBody);
	        if (couponCode.trim().length() != 0) {
	        	cService.disableCodeByGiftOrder(couponCode, gBean.getGiftorderid());
			}
	        return form;
			
		
	}
	//依照userid找到所有order
	@PostMapping(path = "/showgorder.controller")
	public String searchorder1(Principal p,Model m) {
		
		HotelBean user=lService.findUserEmail2(p.getName());
		
		List<giftOrderBean> gBeans = oService.findAllOrderByUserid(user.getUserid());
//		List<giftOrderBean> gBeans = oService.findAllOrder(null);
//		
		giftOrderBean gBean = null;
		for(giftOrderBean gb :gBeans) {
			gBean = gb;
		}
		
		if(gBean == null) {
			return "Gift/giftorderEmpty";
		}
		Date neworderdate = gBean.getOrderdate();
		String orderdate = sd.format(neworderdate);
		
		m.addAttribute("orderdate", orderdate);
		m.addAttribute("gorder", gBeans);
//		

		return "Gift/giftOrderSearchByUserid";
	}
	@GetMapping(path = "/showgorder.controller")
	public String searchorder2(Principal p,Model m) {
		
		HotelBean user=lService.findUserEmail2(p.getName());
		
		List<giftOrderBean> gBeans = oService.findAllOrderByUserid(user.getUserid());
//		List<giftOrderBean> gBeans = oService.findAllOrder(null);
//		
		giftOrderBean gBean = null;
		for(giftOrderBean gb :gBeans) {
			gBean = gb;
		}
		
		if(gBean == null) {
			return "Gift/giftorderEmpty";
		}
		Date neworderdate = gBean.getOrderdate();
		String orderdate = sd.format(neworderdate);
		
		m.addAttribute("orderdate", orderdate);
		m.addAttribute("gorder", gBeans);
//		

		return "Gift/giftOrderSearchByUserid";
	}

	//依照giftorderid 刪除訂單
	@RequestMapping(path = "/deletegiftOrder.controller", method = RequestMethod.POST)
	public String cancelorder1(@RequestParam("giftorderid") String goid) {
		int giftorderid = Integer.parseInt(goid);
		giftOrderBean gBean = oService.findGiftOrderByOrderid(giftorderid);
		gBean.setCancletag(1);
		oService.InsertgiftOrder(gBean);
		return "redirect:../users/showgorder.controller";

	}
	//依據giftorderid 取得 GiftOrderItem (根據訂單編號查看訂單細項
//	@GetMapping(path = "orderDetail.controller")
//	public String getOrderItemByOrderid(@RequestParam("giftorderid") String giftorderidStr,Model m) {
//		int giftorderid = Integer.parseInt(giftorderidStr);
//		giftOrderItemBean gorderBean = oService.findByGiftorderid(giftorderid);
//		System.out.println("----------------");
//		System.out.println(gorderBean.toString());
//		m.addAttribute("gorderBean",gorderBean);
////		return "Gift/orderDetails";
//		return "Gift/ok";
//	}
	
	@RequestMapping(path ="/usersorderDetail.controller/{giftorderid}", method = RequestMethod.GET)
	 public String searchDetail(@PathVariable("giftorderid") String giftorderidStr,Model m)  {
		int giftorderid = Integer.parseInt(giftorderidStr);
		List<giftOrderItemBean> gorderBean = oService.findByGiftorderid(giftorderid);
		System.out.println("----------------");
		System.out.println(gorderBean.toString());
		m.addAttribute("gorderBean",gorderBean);
		return "Gift/orderDetails";
	 }
	@RequestMapping(path ="/usersorderDetail2.controller/{giftorderid}", method = RequestMethod.GET)
    public String searchDetail2(@PathVariable("giftorderid") String giftorderidStr,Model m)  {
       int giftorderid = Integer.parseInt(giftorderidStr);
       List<giftOrderItemBean> gorderBean = oService.findByGiftorderid(giftorderid);
       System.out.println("----------------");
       System.out.println(gorderBean.toString());
       giftOrderBean gBean = oService.findGiftOrderByOrderid(giftorderid);
       Double total=gBean.getTotalamount();
       Double discount = 0.0;
       Double originalTotal = 0.0;
       for(giftOrderItemBean giftOrderItemBean : gorderBean) {
    	   originalTotal += giftOrderItemBean.getSprice()*giftOrderItemBean.getCartnum();
       }
       discount = originalTotal-total;
       m.addAttribute("discount",discount);
       m.addAttribute("gorderBean",gorderBean);
       return "Gift/orderDetails2";
    }
	

	
	
		
//		ObjectMapper objectMapper = new ObjectMapper();

//		// 將 JSON 字串轉換成物件
//		List<Map<String, String>> products = objectMapper.readValue(第一個 JSON 字串, new TypeReference<List<Map<String, String>>>(){});
//		Map<String, String> orderInfo = objectMapper.readValue(第二個 JSON 字串, new TypeReference<Map<String, String>>(){});
//
//		// 取出資料
//		for (Map<String, String> product : products) {
//		    String sname = product.get("sname");
//		    String sprice = product.get("sprice");
//		    String cartnum = product.get("cartnum");
//		    String sid = product.get("sid");
//
//		    // 操作其它資料
//		}
//
//		String newtotal = orderInfo.get("newtotal");
//		String newuserid = orderInfo.get("newuserid");
//		String newusername = orderInfo.get("newusername");
//		String newaddr = orderInfo.get("newaddr");
//		String newuphone = orderInfo.get("newuphone");
//		String newemail = orderInfo.get("newemail");

			
			/*
			String userid = map.get("userid");
//			System.out.println(userid);
			String username = map.get("username");
//			System.out.println(username);
			String useremail	 = map.get("useremail");
//			System.out.println(useremail);
			String userphone= map.get("userphone");
//			System.out.println("userphone->"+userphone);
			String useraddress= map.get("useraddress");
//			System.out.println(useraddress);
//			System.out.println("useraddress->"+useraddress);
 
 */
//			String sid= map.get("gid");
////			System.out.println("sid->"+sid);
//			String sname= map.get("gname");
////			System.out.println("sname->"+sname);
//			String sprice= map.get("gprice");
////			System.out.println("sprice->"+sprice);
//			String cartnum= map.get("cartnum");
////			System.out.println("cartnum->"+cartnum);
//			String totalamount= map.get("totalamount");
//			System.out.println("totalamount->"+totalamount);
			
//			giftOrderBean gBean = new giftOrderBean();
//			int uid = Integer.parseInt(userid);
//			gBean.setUserid(uid);
//			gBean.setUsername(username);
//			gBean.setUseremail(useremail);
//			gBean.setUserphone(userphone);
//			gBean.setUseraddress(useraddress);
//			double total = Double.parseDouble(totalamount);
//			gBean.setTotalamount(total);
			
//			oService.InsertgiftOrder(gBean);
//			
//			giftOrderItemBean goBean = new giftOrderItemBean();
//			goBean.setGiftOrderBean(gBean);
//			int gid = Integer.parseInt(sid);
//			goBean.setSid(gid);
//			goBean.setSname(sname);
//			double gprice = Double.parseDouble(sprice);
//			goBean.setSprice(gprice);
//			int carnum = Integer.parseInt(cartnum);
//			goBean.setCartnum(carnum);
//			oService.InsertgiftItem(goBean);
			
			
	
//			m.addAttribute("goBean",goBean);
//			m.addAttribute("gBean",gBean);
//		return "Gift/giftOrder";
//		response.sendRedirect("/users/giftdisplay.controller");
//	}
	/*
	@GetMapping(path = "/checorder.controller")
	public String processAction1(@RequestParam("sid") String sid ,@RequestParam("sname") String sname,@RequestParam("sprice") String sprice,
			@RequestParam("cartnum") String cartnum,@RequestParam("total") String total,@RequestParam("userid") String userid,@RequestParam("username") String username,
			@RequestParam("useremail") String useremail,@RequestParam("userphone") String userphone,@RequestParam("useraddress") String useraddress,Model m) {
		
		giftOrderBean gBean = new giftOrderBean();
		int uid = Integer.parseInt(userid);
		double totalamount = Double.parseDouble(total);
		
		gBean.setUserid(uid);
		gBean.setUsername(username);
		gBean.setUseremail(useremail);
		gBean.setUserphone(userphone);
		gBean.setUseraddress(useraddress);
		gBean.setTotalamount(totalamount);
		
		
		giftOrderItemBean goBean = new giftOrderItemBean();
		
		int newsid = Integer.parseInt(sid);
		double newprice = Double.parseDouble(sprice);
		int newcartnum = Integer.parseInt(cartnum);
		
		goBean.setSid(newsid);
		goBean.setSname(sname);
		goBean.setSprice(newprice);
		goBean.setCartnum(newcartnum);
		
		
		oService.InsertgiftOrder(gBean);
		oService.InsertgiftItem(goBean);
		
//		m.addAttribute("user", user);
		return "Gift/ok";
	}
	*/
	/*
	@GetMapping("/ordercheck")
	public String showShoppingCar(@RequestParam("userid") Integer userid,@RequestParam("username") String username,
			@RequestParam("useremail") String useremail,@RequestParam("userphone") String userphone,@RequestParam("useraddress") String useraddress,
			@RequestParam("sid") Integer sid, @RequestParam("sname") String sname,
			@RequestParam("sprice")Integer sprice,@RequestParam("totalamount")double totalamount, Model m){
		giftOrderBean gBean = new giftOrderBean();
		gBean.setUserid(userid);
		gBean.setUseremail(useremail);
		gBean.setUserphone(userphone);
		gBean.setUseraddress(useraddress);
		gBean.setTotalamount(totalamount);
		gBean.setOrderdate(null);
		gBean.setCancletag(null);
		System.out.println("===============");
		giftOrderItemBean goBean = new giftOrderItemBean();
		goBean.setSid(sid);
		goBean.setSname(sname);
		goBean.setSprice(sprice);
		
		m.addAttribute("giftOrderBean", gBean);
		m.addAttribute("giftOrderItemBean", goBean);
		return "Gift/ordercheck";
	}
	@PostMapping(path="/insertorder")
	@ResponseBody
	public String giftUpdate(HttpServletRequest req,Model m) throws ParseException { 
		HttpSession session = req.getSession();
		String useridString;
		giftOrderBean gBean = new giftOrderBean();
		Map<Integer, giftShoppingCart> cartMap = (Map<Integer, giftShoppingCart>) session.getAttribute("cartMap");
		double total =0;
		Set<Integer> key = cartMap.keySet();
		for(int n : key) {
			giftShoppingCart car = cartMap.get(n);
			double prices = car.getSubtotal();
			total += prices;
		}
		gBean.setTotalamount(total);
		int userId = (int)session.getAttribute("userId");
		List<HotelBean>listHotelBeans = lService.findById(userId);
		
		HotelBean hbean = null;
		for(HotelBean h:listHotelBeans ) {
			hbean = h;
		    int userid = h.getUserid();
		    String useremail = h.getUseremail();
		    String userphone = h.getUserphone();
		    String useraddress = h.getUseraddress();
		    
		    gBean.setUserid(userid);
		    gBean.setUseremail(useremail);
		    gBean.setUserphone(userphone);
		    gBean.setUseraddress(useraddress);
		}
		/*
		 // 取出存放在購物車內的商品，放入Map型態的變數cart，準備將其內的商品一個一個轉換為OrderItemBean，
		
		Map<Integer, OrderItemBean> content = shoppingCart.getContent();
		
		Set<OrderItemBean> items = new LinkedHashSet<>();
		Set<Integer> set = content.keySet();
		for(Integer i : set) {
			items.add(content.get(i));
		}
		
		// 執行到此，購物車內所有購買的商品已經全部轉換為為OrderItemBean物件，並放在Items內
		orderBean.setItems(items);  
		 
		
//		Map<Integer, giftShoppingCart> cartMap = (Map<Integer, giftShoppingCart>) session.getAttribute("cartMap");
//		giftOrderBean gBean = new giftOrderBean();
//		String sid = cart.get("list.value.sbean.sid") ;
//		String sname = cart.get("list.value.sbean.sname") ;
//		String sprice = cart.get("list.value.sbean.sprice") ;
//		String cartnum = cart.get("list.value.cartnum") ;
//		int isid = 0;
//		isid = Integer.parseInt(sid);
//		gBean.setSid(isid);
//		oService.InsertOrder(gBean);
//		return "Gift/insertok";
//	}
	*/
	
}
