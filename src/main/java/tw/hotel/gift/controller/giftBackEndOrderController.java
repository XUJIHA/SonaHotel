package tw.hotel.gift.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

//import org.apache.poi.xssf.usermodel.XSSFRow;
//import org.apache.poi.xssf.usermodel.XSSFSheet;
//import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.opencsv.CSVWriter;

import tw.hotel.gift.model.giftOrderBean;
import tw.hotel.gift.model.giftOrderItemBean;
import tw.hotel.gift.service.giftOrderService;

@Controller
@RequestMapping("/admin")
public class giftBackEndOrderController {
	
	
	@Autowired
	private giftOrderService oService;
	
	@Autowired
	private ObjectMapper objectMapper;
	
	//找到所有伴手禮訂單
	@GetMapping(path = "/giftorder.controller")
	public String showgiftorder(Model m) {
		List<giftOrderBean> giftOrderBeans = oService.findAllOrder();
		giftOrderBean gb = null;
		
		for (giftOrderBean b : giftOrderBeans) {
			gb = b;
		}
		List<giftOrderBean> giftOrderBean = oService.findAllOrderExpectCancel(gb);
		double totalAmount = 0.0;
		for (giftOrderBean order : giftOrderBean) {
		    totalAmount += order.getTotalamount();
		}
		m.addAttribute("totalAmount",totalAmount);
		
		int count = 0;
		for (giftOrderBean order : giftOrderBean) {
			count++;
		}
		m.addAttribute("count",count);
		
		m.addAttribute("giftorder", giftOrderBeans);
		return "Gift/orders";
	}
	//透過giftorderid -> 找到 giftOrderItemBean
	@RequestMapping(path="/orderdetail.controller/{giftorderid}",method = RequestMethod.GET)
	 public String showorderitem(@PathVariable("giftorderid") String giftorderidStr,Model m)  {
		int giftorderid = Integer.parseInt(giftorderidStr);
		List<giftOrderItemBean> gorderBean = oService.findByGiftorderid(giftorderid);
		System.out.println("----------------");
		System.out.println(gorderBean.toString());
		m.addAttribute("gorderBean",gorderBean);
		return "Gift/backEndOrderDetail";
	 }
	
	//依照giftorderid 刪除訂單
	@RequestMapping(path = "/deleteOrder.controller", method = RequestMethod.POST)
	public String cancelorder1(@RequestParam("giftorderid") String goid) {
		int giftorderid = Integer.parseInt(goid);
		giftOrderBean gBean = oService.findGiftOrderByOrderid(giftorderid);
		gBean.setCancletag(1);
		oService.InsertgiftOrder(gBean);
		return "redirect:../admin/giftorder.controller";

	}
	//列印json
	@GetMapping("/orderJson.controller")
	public void OrderJson(HttpServletResponse response) throws IOException {
	    List<giftOrderBean> giftOrderBeans = oService.findAllOrder();
	    List<giftOrderBean> list  = new ArrayList<>();
	    for(giftOrderBean g:giftOrderBeans) {
	    	giftOrderBean gBean = new giftOrderBean();
	    	gBean.setGiftorderid(g.getGiftorderid());
	    	gBean.setOrderdate(g.getOrderdate());
	    	gBean.setUseraddress(g.getUseraddress());
	    	gBean.setUseremail(g.getUseremail());
	    	gBean.setUserid(g.getUserid());
	    	gBean.setUsername(g.getUsername());
	    	gBean.setUserphone(g.getUserphone());
	    	gBean.setCancletag(g.getCancletag());
	    	gBean.setTotalamount(g.getTotalamount());
	    	list.add(gBean);
	    	
	    }
	    // Convert order data to JSON format
	    Gson gson = new GsonBuilder().setPrettyPrinting().create();
	    String json = gson.toJson(list);
	    String fileName = "giftOrders.json";
	    response.setContentType("application/json");
	    response.setHeader("Content-Disposition", "attachment;filename=" + fileName);

	    try (OutputStream out = response.getOutputStream()) {
	        out.write(json.getBytes(StandardCharsets.UTF_8));
	    }
	}

//	@PostMapping("/orderJson.controller")
//	public void OrderJson(HttpServletResponse response) throws IOException {
//		List<giftOrderBean> giftOrderBeans = oService.findAllOrder();
//
//	    // Convert order data to JSON format
//	    Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
//	    String json = gson.toJson(giftOrderBeans);
//
//	    // Set response headers
//	    String fileName = "Giftorders.json";
//	    response.setContentType("application/json");
//	    response.setHeader("Content-Disposition", "attachment;filename=" + fileName);
//
//	    // Write JSON data to response output stream
//	    try (OutputStream out = response.getOutputStream()) {
//	        out.write(json.getBytes(StandardCharsets.UTF_8));
//	    }
//		
//	    return "redirect:../admin/giftorder.controller";
//	}
	//列印csv
	@GetMapping("/orderCsv.controller")
	public void generatecsv(HttpServletResponse response) throws IOException {
	    String fileName = "giftOrders.csv";
	    response.setContentType("text/csv; charset=UTF-8");
	    response.setHeader("Content-Disposition", "attachment; filename=" + fileName);

	    List<giftOrderBean> giftOrderBeans = oService.findAllOrder();
	    try (PrintWriter writer = response.getWriter()) {
	        writer.println("giftorderid,userid,username,useremail,userphone,useraddress,orderdate,totalamount,canceletag");
	        for (giftOrderBean g : giftOrderBeans) {
	            writer.println(g.getGiftorderid()+ "," + g.getUserid() + "," + g.getUsername() + "," + g.getUseremail() + "," + g.getUserphone()+ 
	            		"," + g.getUseraddress()+ "," + g.getOrderdate()+ "," + g.getTotalamount()+ "," + g.getCancletag());
	        }
	    }
	}
	//列印txt
	@GetMapping("/orderTxt.controller")
	public void OrderTxt(Model m,HttpServletResponse response) throws IOException {
	    List<giftOrderBean> giftOrderBeans = oService.findAllOrder();
//	    String filename = "giftOrderBeans.txt";
//	    String filepath = "C://Users/user/Downloads/" + filename;  // 設定檔案路徑
	 // Create plain text data
	    StringBuilder sb = new StringBuilder();
	    sb.append("giftorderid\torderdate\tusername\ttotalamount\n");
	    for (giftOrderBean order : giftOrderBeans) {
	        sb.append(order.getGiftorderid()).append("\t")
	          .append(new SimpleDateFormat("yyyy-MM-dd").format(order.getOrderdate())).append("\t")
	          .append(order.getUsername()).append("\t")
	          .append(order.getTotalamount()).append("\n");
	    }
	    String txt = sb.toString();

	    // Set response headers
	    String fileName = "orders.txt";
	    response.setContentType("text/plain");
	    response.setHeader("Content-Disposition", "attachment;filename=" + fileName);

	    // Write plain text data to response output stream
	    try (OutputStream out = response.getOutputStream()) {
	        out.write(txt.getBytes(StandardCharsets.UTF_8));
	    }
//	    try {
//	        FileWriter writer = new FileWriter(filepath);
//	        for (giftOrderBean order : giftOrderBeans) {
//	            writer.write(order.toString() + System.lineSeparator()); // 將每個 order 寫入檔案中
//	        }
//	        writer.close();
//	        m.addAttribute("message", "已成功將資料輸出為txt檔案。");
//	    } catch (IOException e) {
//	        e.printStackTrace();
//	        m.addAttribute("message", "資料輸出失敗，請重新輸出。");
//	    }
//	    return "redirect:../admin/giftorder.controller";
	}
	//列印excel
//	@PostMapping("/orderExcel.controller")
//	public String orderExcel(HttpServletResponse response) throws IOException {
//	    
//	    List<giftOrderBean> giftOrderBeans = oService.findAllOrder();
//	    
//	    // Create workbook and sheet
//	    XSSFWorkbook workbook = new XSSFWorkbook();
//	    XSSFSheet sheet = workbook.createSheet("Order Data");
//	    
//	    // Create header row
//	    XSSFRow headerRow = sheet.createRow(0);
//	    headerRow.createCell(0).setCellValue("Order ID");
//	    headerRow.createCell(1).setCellValue("Order Date");
//	    headerRow.createCell(2).setCellValue("User Name");
//	    headerRow.createCell(3).setCellValue("Total Amount");
//	    
//	    // Add data rows
//	    int rowNum = 1;
//	    for (giftOrderBean order : giftOrderBeans) {
//	        XSSFRow dataRow = sheet.createRow(rowNum++);
//	        dataRow.createCell(0).setCellValue(order.getGiftorderid());
//	        dataRow.createCell(1).setCellValue(order.getOrderdate().toString());
//	        dataRow.createCell(2).setCellValue(order.getUsername());
//	        dataRow.createCell(3).setCellValue(order.getTotalamount());
//	    }
//	    
//	    // Set response headers
//	    response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
//	    response.setHeader("Content-Disposition", "attachment; filename=\"order_data.xlsx\"");
//	    
//	    // Write workbook to response output stream
//	    workbook.write(response.getOutputStream());
//	    
//	    // Close workbook and output stream
//	    workbook.close();
//	    response.getOutputStream().close();
//	    
//	    return "redirect:../admin/giftorder.controller";
//	}
//	@PostMapping("/orderExcel.controller")
//	public String OrderExcel(Model m) {
//	    List<giftOrderBean> giftOrderBeans = oService.findAllOrder();
//	    
//	    // 建立新的工作簿
//	    XSSFWorkbook workbook = new XSSFWorkbook();
//	    
//	    // 建立新的工作表
//	    XSSFSheet sheet = workbook.createSheet("訂單資料");
//	    
//	    // 建立表頭
//	    XSSFRow headerRow = sheet.createRow(0);
//	    headerRow.createCell(0).setCellValue("訂單編號");
//	    headerRow.createCell(1).setCellValue("訂單日期");
//	    headerRow.createCell(2).setCellValue("使用者名稱");
//	    headerRow.createCell(3).setCellValue("總金額");
//	    
//	    // 填入資料
//	    int rowNumber = 1;
//	    for (giftOrderBean giftOrder : giftOrderBeans) {
//	        XSSFRow row = sheet.createRow(rowNumber++);
//	        row.createCell(0).setCellValue(giftOrder.getGiftorderid());
//	        row.createCell(1).setCellValue(giftOrder.getOrderdate().toString());
//	        row.createCell(2).setCellValue(giftOrder.getUsername());
//	        row.createCell(3).setCellValue(giftOrder.getTotalamount());
//	    }
//	    
//	    // 儲存工作簿至本地端
//	    try {
//	        FileOutputStream outputStream = new FileOutputStream("C://Users/user/Desktop/GiftOrderOuput/EXCEL/giftOrderBeans.xlsx");
//	        workbook.write(outputStream);
//	        workbook.close();
//	    } catch (IOException e) {
//	        e.printStackTrace();
//	    }
//	    
//	    return "redirect:../admin/giftorder.controller";
//	}


	
	
}
