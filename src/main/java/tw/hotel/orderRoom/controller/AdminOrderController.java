package tw.hotel.orderRoom.controller;

import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import tw.hotel.orderRoom.model.Orders;
import tw.hotel.orderRoom.model.OrderDetails;
import tw.hotel.orderRoom.service.OrdersService;

@Controller
@RequestMapping("/admin")
public class AdminOrderController {

	@Autowired
	private OrdersService oService;

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	// search
	@GetMapping(path = "/searchorder.controller")
	public String searchorder1(Model m) {
		List<Orders> orderbean = oService.searchOrder();
		Orders ob = null;
		for (Orders b : orderbean) {
			ob = b;
		}
		m.addAttribute("orderbean", orderbean);
		return "orderRoom/orderSearchM";
		
	}
	
	@PostMapping(path = "/searchorder.controller")
	public String searchorder2(Model m) {
		List<Orders> orderbean = oService.searchOrder();
		Orders ob = null;
		for (Orders b : orderbean) {
			ob = b;
		}
		m.addAttribute("orderbean", orderbean);
		return "orderRoom/orderSearchM";
		
	}
	
	@GetMapping(path = "/orderchart.controller")
	public String orderchartPage(Model m) {
		return "orderRoom/orderChart";
		
	}
	
	@GetMapping(path = "/orderdata.controller")
	@ResponseBody
	public List<Orders> orderchart(Model m) {
		List<Orders> orders = oService.searchOrder();
		return orders;
		
	}	

	@PostMapping(path = "/searchdetails.controller")
	public String searchdetails2(@RequestParam("orderid") String orderidStr, Model m) {
		int orderid = Integer.parseInt(orderidStr);
		Orders orderbean = oService.findByIdforOrder(orderid);
		OrderDetails orderdetailsbean = oService.findByIdforDetails(orderid);

		m.addAttribute("orderbean", orderbean);
		m.addAttribute("orderdetailsbean", orderdetailsbean);

		return "orderRoom/orderDetailsM";
	}

	// update
	@PostMapping(path = "/updateorder.controller")
	public String updateorder2(@RequestParam("orderid") String orderidstr, @RequestParam("username") String username,
			@RequestParam("checkindate") String checkindate, @RequestParam("checkoutdate") String checkoutdate,
			@RequestParam("roomname") String roomname, @RequestParam("price") String roompriceStr,
			@RequestParam("useremail") String useremail, @RequestParam("userphone") String userphone,
			@RequestParam("canceltag") String canceltag, @RequestParam("notes") String notes, Model m)
			throws ParseException {

		int orderid = Integer.parseInt(orderidstr.trim());
		int price = 0;

		Orders orderbean = null;
		OrderDetails orderdetailsbean = null;
		price = Integer.parseInt(roompriceStr);

		Date utilcheckindate = sdf.parse(checkindate);
		Date utilcheckoutdate = sdf.parse(checkoutdate);
		java.sql.Date sqlcheckoutdate = new java.sql.Date(utilcheckoutdate.getTime());
		java.sql.Date sqlcheckindate = new java.sql.Date(utilcheckindate.getTime());

		Orders ob = oService.findByIdforOrder(orderid);
		OrderDetails odb = oService.findByIdforDetails(orderid);
		ob.setUsername(username);
		ob.setCheckindate(sqlcheckindate);
		ob.setCheckoutdate(sqlcheckoutdate);
		ob.setRoomname(roomname);
		ob.setPrice(price);
		ob.setCanceltag(canceltag);

		odb.setUseremail(useremail);
		odb.setUserphone(userphone);
		System.out.println(ob.getCanceltag());
		if(("已取消").equals(canceltag)) {
			odb.setNotes("已審核通過，將在7天內退款，如有其他相關問題，歡迎聯繫客服。");
		}else {
			odb.setNotes(notes);
		}
		System.out.println(odb.getNotes());

		oService.modifyOrder(ob);
		oService.modifyOrderDetails(odb);

		orderbean = oService.findByIdforOrder(orderid);
		orderdetailsbean = oService.findByIdforDetails(orderid);

		Date checkin = orderbean.getCheckindate();
		Date checkout = orderbean.getCheckoutdate();
		String checkinn = sdf.format(checkin);
		String checkoutt = sdf.format(checkout);

		m.addAttribute("orderbean", orderbean);
		m.addAttribute("orderdetailsbean", orderdetailsbean);
		m.addAttribute("checkindate", checkinn);
		m.addAttribute("checkoutdate", checkoutt);	

		return "orderRoom/orderEmpty";
	}

	// cancel
	@PostMapping(path = "/cancelorder.controller")
	public String cancelorder2(@RequestParam("orderid") String orderidstr) {
		int orderid = Integer.parseInt(orderidstr);
		Orders order = oService.findByIdforOrder(orderid);
		OrderDetails details = oService.findByIdforDetails(orderid);
		Date today = new Date();
		order.setCanceltag("已取消");
		details.setNotes(sdf.format(today) + "已審核通過，將在7天內退款，如有其他相關問題，歡迎聯繫客服。");
		oService.modifyOrder(order);
		oService.modifyOrderDetails(details);
		return "orderRoom/orderEmpty";
	}

	@GetMapping("/generatejson.controller")
	public void generatejson(HttpServletResponse response) throws IOException {
		List<Orders> orders = oService.searchOrder();
	    List<Orders> list = new ArrayList<>();
	    for (Orders o : orders) {
	        Orders newOrder = new Orders();
	        newOrder.setOrderid(o.getOrderid());
	        newOrder.setUserid(o.getUserid());
	        newOrder.setUsername(o.getUsername());
	        newOrder.setOrderdate(o.getOrderdate());
	        newOrder.setCheckindate(o.getCheckindate());
	        newOrder.setCheckoutdate(o.getCheckoutdate());
	        newOrder.setRoomname(o.getRoomname());
	        newOrder.setPrice(o.getPrice());
	        newOrder.setCanceltag(o.getCanceltag());	       
	        list.add(newOrder);
	    }
	    Gson gson = new GsonBuilder().setPrettyPrinting().create();
	    String json = gson.toJson(list);
	    String fileName = "order's data.json";
	    response.setContentType("application/json");
	    response.setHeader("Content-Disposition", "attachment;filename=" + fileName);

	    try (OutputStream out = response.getOutputStream()) {
	        out.write(json.getBytes(StandardCharsets.UTF_8));
	    }
	    
	}

	//Output Csv
	@GetMapping("/generatecsv.controller")
	public void generatecsv(HttpServletResponse response) throws IOException {
	    String fileName = "order's data.csv";
	    response.setContentType("text/csv; charset=BIG5");
	    response.setHeader("Content-Disposition", "attachment; filename=" + fileName);

	    List<Orders> data = oService.searchOrder();
	    try (PrintWriter writer = response.getWriter()) {
	        writer.println("訂單編號,會員編號,會員姓名,訂購日期,入住日期,退房日期,訂購房型,訂單金額,訂單狀態");
	        for (Orders ob : data) {
	            writer.println(ob.getOrderid()+ "," + ob.getUserid() + "," + ob.getUsername() + "," + ob.getOrderdate() + "," + ob.getCheckindate()+ 
	            		"," + ob.getCheckoutdate()+ "," + ob.getRoomname()+ "," + ob.getPrice()+ "," + ob.getCanceltag());
	        }
	    }
	}
	
	//output pdf
	@PostMapping(path = "/generatepdf.controller")
	@ResponseBody
	public byte[] generatepdf() throws IOException {
		FileInputStream inputStream = new FileInputStream("src/main/resources/static/font/font.txt");
		byte[] data;
		data = new byte[inputStream.available()];
		inputStream.read(data);
		inputStream.close();
		return data;
	}

}
