package tw.hotel.loginlogout.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.lowagie.text.DocumentException;
import tw.hotel.loginlogout.model.HotelBean;
import tw.hotel.loginlogout.service.AuthUserDetialService;
import tw.hotel.loginlogout.service.LoginService;



@Controller
@RequestMapping(path="/admin")
public class AdminLoginController {

	@Autowired
	private LoginService loginService1;
	
	@Autowired
	private AuthUserDetialService auservice;
	
	//後臺首頁
	@GetMapping(path ="/backgroundIndex.controller")
	public String backgroundIndexAction(@ModelAttribute("hotelBean") HotelBean hb,Model hModel)  {
		//每月註冊人數
		String userregistration = null;
		List<String> hotelbean = loginService1.findByRegister(userregistration);		
		hotelbean.forEach(d->{
			String Month=d.substring(5,7);
			hModel.addAttribute("Month", Month);
		});
		
		//會員總數
		int memberCount = loginService1.getmemberCount();
		
		hModel.addAttribute("memberCount", memberCount);
		
		Map<String, Integer> monthCounts = new HashMap<>();
		for (String bookingDate : hotelbean) {
		    String month = bookingDate.substring(5, 7);
		    monthCounts.put(month, monthCounts.getOrDefault(month, 0) + 1);
		}
		
		List<Integer> counts = new ArrayList<>();
		counts.add(monthCounts.get("01"));
		counts.add(monthCounts.get("02"));
		counts.add(monthCounts.get("03"));
		counts.add(monthCounts.get("04"));
		counts.add(monthCounts.get("05"));
		counts.add(monthCounts.get("06"));
		counts.add(monthCounts.get("07"));
		counts.add(monthCounts.get("08"));
		counts.add(monthCounts.get("09"));
		counts.add(monthCounts.get("10"));
		counts.add(monthCounts.get("11"));
		counts.add(monthCounts.get("12"));

		hModel.addAttribute("monthCounts", counts);
		Integer january = counts.get(0);
		Integer february = counts.get(1);
		Integer march = counts.get(2);
		Integer april = counts.get(3);
		Integer may = counts.get(4);
		Integer june = counts.get(5);
		Integer july = counts.get(6);
		Integer august = counts.get(7);
		Integer september = counts.get(8);
		Integer october = counts.get(9);
		Integer november = counts.get(10);
		Integer december = counts.get(11);
		hModel.addAttribute("january", january);
		hModel.addAttribute("february", february);
		hModel.addAttribute("march", march);
		hModel.addAttribute("april", april);
		hModel.addAttribute("may", may);
		hModel.addAttribute("june", june);
		hModel.addAttribute("july", july);
		hModel.addAttribute("august", august);
		hModel.addAttribute("september", september);
		hModel.addAttribute("october", october);
		hModel.addAttribute("november", november);
		hModel.addAttribute("december", december);

		//男女比例
		String Allusergender = null;
		List<String> genders = loginService1.findByGender(Allusergender);
		long maleCount = genders.stream().filter(g -> g.equals("男")).count();
		long femaleCount = genders.stream().filter(g -> g.equals("女")).count();
		
		hModel.addAttribute("maleCount", maleCount);
		hModel.addAttribute("femaleCount", femaleCount);
		
		String Alluserstatus = null;
		List<String> findByUserStatus = loginService1.findByUserStatus(Alluserstatus);
		long enabledCount = findByUserStatus.stream().filter(s -> s.equals("啟用")).count();
		long disabledCount = findByUserStatus.stream().filter(s -> s.equals("停用")).count();
		long unverifiedCount = findByUserStatus.stream().filter(s -> s.equals("未驗證")).count();

		hModel.addAttribute("enabledCount", enabledCount);
		hModel.addAttribute("disabledCount", disabledCount);
		hModel.addAttribute("unverifiedCount", unverifiedCount);
		
		int loginCount = auservice.getLoginCount();
		hModel.addAttribute("loginCount", loginCount);
		
		return "/backgroundIndex";
	}

	
	//後臺看到所有會員
	@RequestMapping(path ="/searchAllMember.controller", method = RequestMethod.POST)
	public String searchAction(@ModelAttribute("hotelBean") HotelBean hb,Model hModel)  {
		List<HotelBean> classlist = loginService1.selecthotel();
		hModel.addAttribute("classList", classlist);
		return "LoginLogout/memberAll";
	}
	
	//後臺看到所有會員
	@RequestMapping(path ="/searchAllMember.controller", method = RequestMethod.GET)
	public String searchAction2(@ModelAttribute("hotelBean") HotelBean hb,Model hModel)  {
		List<HotelBean> classlist = loginService1.selecthotel();
		hModel.addAttribute("classList", classlist);
		return "LoginLogout/memberAll";
	}
	
	//會員個人明細
	@PostMapping(path ="/memberDetailFindById.controller")
	public String findByIdAction(@RequestParam("userid") int userid,Model hModel)  {
		List<HotelBean> classlist =loginService1.findById(userid);
		hModel.addAttribute("classList", classlist);
		
		return "LoginLogout/memberDetail";
	}
	
	//修改會員狀態
	@ResponseBody
	@PostMapping(path ="/updateMemberStatus.controller")
	public void updateMemberStatusAction(@RequestParam("userid") int userid, @RequestParam("userstatus") String userstatus,Model hModel)  {
		List<HotelBean> users = loginService1.findById(userid);
		HotelBean user = users.get(0);
		user.setUserstatus(userstatus);
		loginService1.updatehotel(user);
	}
	
	//刪除會員
	@GetMapping("/deleteMember.controller") 
	public String processDeleteAction1(@RequestParam("userid") int userid) {
		loginService1.deleteById(userid);
		return "redirect:/searchAllMember.controller";
	}
	
	//刪除會員
	@PostMapping("/deleteMember.controller") 
	public String processDeleteAction2(@RequestParam("userid") int userid,HttpServletRequest request) {
		loginService1.deleteById(userid);
		return "redirect:/searchAllMember.controller";
	}
	
	//匯出CSV
	 @GetMapping(value = "/exportCsv") 
	  public void exportCsv(HttpServletResponse response) throws IOException { 
		  DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
		  String currentDateTime = dateFormatter.format(new Date());
		  String headerValue = "attachment; filename=members_" + currentDateTime + ".csv"; //輸出CSV的檔案名稱 
		  
	      response.setContentType("text/csv; charset=BIG5");  //設定輸出為UTF-8中文才不會跑掉 
	      response.setHeader("Content-Disposition", headerValue); 

	      //這邊要改成自己的BEAN ,搜尋全部然後塞進list內
	      List<HotelBean> hb = loginService1.findAll(); 
	      try (PrintWriter writer = response.getWriter()) { 
	       //這是各位csv的欄位名稱 
	          writer.println("使用者id,姓名,EMAIL,電話號碼,性別,國家,地址,身分證字號(護照號碼),生日,註冊日期"); 
	          //這裡改成要抓的值 
	          for (HotelBean bean : hb) { 
	              writer.println(bean.getUserid() + "," + bean.getUsername() + "," + bean.getUseremail() 
	              + ","+ bean.getUserphone() + "," + bean.getUsergender() + "," + bean.getUsercountry() + ","
	                + bean.getUseraddress() + "," + bean.getUseridentity()+ "," + bean.getUserbirthday()+ bean.getUserregistration()+ ","); 
	          } 
	      } 
	  }	
	 
	//匯出PDF
	 @GetMapping(path = "/exportPdf")
	 public void exportToPDF(HttpServletResponse response) throws DocumentException, IOException {
	    response.setContentType("application/pdf");
	    DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
	    String currentDateTime = dateFormatter.format(new Date());
	         
	    String headerKey = "Content-Disposition";
	    String headerValue = "attachment; filename=members_" + currentDateTime + ".pdf";
	    response.setHeader(headerKey, headerValue);
	         
	    List<HotelBean> listUsers = loginService1.findAll();
	         
	    UserPDFExporter exporter = new UserPDFExporter(listUsers);
	    exporter.export(response);
	         
	    }
	 
	 //output json
	  @GetMapping(path = "/exportjson")
	  public void outputFileJson(HttpServletResponse response) throws IOException {
		 List<HotelBean> hb = loginService1.findAll(); 
		 Gson gson = new GsonBuilder().setPrettyPrinting().create();
		 String json = gson.toJson(hb);
		 
		 DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
		 String currentDateTime = dateFormatter.format(new Date());
		 response.setContentType("application/json");
		    response.setHeader("Content-Disposition", "attachment;filename=members_" + currentDateTime + ".json");

		 try (OutputStream out = response.getOutputStream()) {
		        out.write(json.getBytes(StandardCharsets.UTF_8));
		 }		
	  }
	
	//登出，已用security取代
//	@GetMapping(path ="/backgroundlogout.controller")
//	public String searchAction(HttpServletResponse response, HttpServletRequest request)  {
//		HttpSession session = request.getSession(false);// 防止建立Session
//		if (session == null) {
//			return "index";
//		}
//		int logOutStatus = 1;
//		request.setAttribute("logOutStatus", logOutStatus);
//		session.removeAttribute("useremail");
//
//		return "index";
//	}
}
