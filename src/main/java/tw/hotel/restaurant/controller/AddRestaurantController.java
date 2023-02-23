package tw.hotel.restaurant.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import tw.hotel.restaurant.dao.RestaurantDao;
import tw.hotel.restaurant.dao.RestaurantDaoImpl;
import tw.hotel.restaurant.model.Restaurant;
import tw.hotel.restaurant.model.RestaurantRepository;
import tw.hotel.restaurant.service.RestaurantDaoService;


@Controller
@RequestMapping(path="/admin")
public class AddRestaurantController {
	
	@Autowired
	private RestaurantDaoService dao ;

	@PostMapping("/AddRestaurant.controller")
	protected String addRestaurant(@RequestParam("restaurantname")@Nullable String name, @RequestParam("restaurantdes")@Nullable String des,
			@RequestParam("restauranttype")@Nullable String type, @RequestParam("restaurantaddress")@Nullable String address,
			@RequestParam("restaurantphone")@Nullable String phone, 
			@RequestParam("restaurantprice")@Nullable String price,@RequestPart("image") MultipartFile image, Model m) {

		String error = "不能輸入空白";

		if (name.equals("") ) {
			m.addAttribute("nullError2", error);
			
			return "/Restaurant/BackUserRestaurantAdd";
		}
		if (des.equals("")) {
			m.addAttribute("nullError3", error);
			
			return "/Restaurant/BackUserRestaurantAdd";
		}
		if (type.equals("")) {
			m.addAttribute("nullError4", error);
			
			return "/Restaurant/BackUserRestaurantAdd";
		}
		if (price.equals("")) {
			m.addAttribute("nullError5", error);
			
			return "/Restaurant/BackUserRestaurantAdd";
		}
		if (price.equals("")) {
			m.addAttribute("nullError6", error);
			
			return "/Restaurant/BackUserRestaurantAdd";
		}
		int price2 = Integer.parseInt(price);
		if (phone.equals("")) {
			m.addAttribute("nullError7", error);
			
			return "/Restaurant/BackUserRestaurantAdd";
		}
		
		
		
		Blob img = null; // 圖片上傳
		if (image.getSize()!=0) {
			try {
				InputStream is = image.getInputStream();
				byte[] b = is.readAllBytes();
				img = new SerialBlob(b);
			} catch (IOException | SQLException e) {
				e.printStackTrace();
			}
		}

		Restaurant resBean = new Restaurant(name, des, type, price2, address, phone,img);
		 dao.insertRes(resBean);
		 m.addAttribute("success", 1);
		
		return "/Restaurant/BackUserRestaurantAdd";

	}
}
