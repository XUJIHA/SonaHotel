package tw.hotel.restaurant.controller;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
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

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.lowagie.text.DocumentException;
import com.sun.istack.Nullable;

import tw.hotel.loginlogout.controller.UserPDFExporter;
import tw.hotel.loginlogout.model.HotelBean;
import tw.hotel.restaurant.model.Arrange;
import tw.hotel.restaurant.model.ArrangeRepository;
import tw.hotel.restaurant.model.Restaurant;
import tw.hotel.restaurant.service.RestaurantDaoService;

@Controller
@RequestMapping(path = "/admin")
public class BackUserController {
	@Autowired
	private RestaurantDaoService resRepo;
	@Autowired
	private ArrangeRepository dao;

	@GetMapping("/BackUserController")
	protected String BackUserHomepage(Model m) {

		List<Restaurant> list = resRepo.resALL();

		m.addAttribute("resturant", list);

		return "/Restaurant/BackUserHomepage";
	}

	@GetMapping("/BackUserArrangepage")
	public String BackUserArrangepage(Model m) {
		List<Restaurant> list2 = resRepo.resALL();
		List<Arrange> list = resRepo.arrALL();

		m.addAttribute("arrange", list);
		m.addAttribute("resturant", list2);

		return "/Restaurant/BackUserArrangepage";
	}

	@GetMapping("/BackUserRestaurantAdd")
	public String BackUserRestaurantAdd() {

		return "/Restaurant/BackUserRestaurantAdd";
	}

	@PostMapping("/BackUserRestaurantRewrite")
	public String BackUserRestaurantRewrite(@RequestParam("restaurantid") @Nullable String id, Model m) {
		int id2 = Integer.parseInt(id);
		List<Restaurant> list = resRepo.findResById(id2);
		m.addAttribute("resturant", list);
		return "/Restaurant/BackUserRestaurantRewrite";
	}

	@PostMapping("/BackUserArrangeRewrite")
	public String BackUserArrangeRewrite(@RequestParam("arrangenumber") @Nullable String number, Model m) {
		int id2 = Integer.parseInt(number);
		List<Arrange> list = resRepo.ArrfindById(number);
		m.addAttribute("arrange", list);
		return "/Restaurant/BackUserArrangeRewrite";
	}

	// 匯出CSV
	@GetMapping(value = "/ResexportCsv")
	public void ResexportCsv(HttpServletResponse response) throws IOException {
		String fileName = "Resoutput.csv"; // 輸出CSV的檔案名稱
		response.setContentType("text/csv; charset=big5"); // 設定輸出為UTF-8中文才不會跑掉
		response.setHeader("Content-Disposition", "attachment; filename=" + fileName);

		// 這邊要改成自己的BEAN ,搜尋全部然後塞進list內
		List<Restaurant> list = resRepo.resALL();
		try (PrintWriter writer = response.getWriter()) {
			// 這是各位csv的欄位名稱
			writer.println("餐廳ID,餐廳名稱,餐廳位置,餐廳電話,餐廳簡介，餐廳介紹");
			// 這裡改成要抓的值
			for (Restaurant bean : list) {
				writer.println(bean.getRestaurantid() + "," + bean.getRestaurantname() + ","
						+ bean.getRestaurantaddress() + "," + bean.getRestaurantphone()+","+bean.getRestaurantdes()+","+bean.getRestauranttype());
			}
		}
	}
	// 匯出CSV
	@GetMapping(value = "/ArrexportCsv")
	public void ArrexportCsv(HttpServletResponse response) throws IOException {
		String fileName = "Arroutput.csv"; // 輸出CSV的檔案名稱
		response.setContentType("text/csv; charset=big5"); // 設定輸出為UTF-8中文才不會跑掉
		response.setHeader("Content-Disposition", "attachment; filename=" + fileName);
		
		// 這邊要改成自己的BEAN ,搜尋全部然後塞進list內
		List<Arrange> list = resRepo.arrALL();
		try (PrintWriter writer = response.getWriter()) {
			// 這是各位csv的欄位名稱
			writer.println("姓名,電話,日期,時段,幾人包廂,店名,總消費金額");
			// 這裡改成要抓的值
			for (Arrange bean : list) {
				writer.println(bean.getArrangename()+","+bean.getArrangephone()+","+bean.getDay()+","+bean.getEattime()+","+bean.getPeople()+"人,"+
			bean.getResname()+","+bean.getPrice());
			}
		}
	}

}
