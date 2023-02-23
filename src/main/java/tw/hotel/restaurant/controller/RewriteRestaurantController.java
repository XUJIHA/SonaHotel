package tw.hotel.restaurant.controller;

import java.io.IOException;
import java.io.InputStream;
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
import org.springframework.web.multipart.MultipartFile;

import tw.hotel.restaurant.dao.RestaurantDao;
import tw.hotel.restaurant.dao.RestaurantDaoImpl;
import tw.hotel.restaurant.model.Restaurant;
import tw.hotel.restaurant.service.RestaurantDaoService;

@Controller
@RequestMapping(path="/admin")
public class RewriteRestaurantController {
	@Autowired
	private RestaurantDaoService dao;

	@PostMapping("/RewriteRestaurant.controller")
	protected String rewriteRes(@RequestParam("restaurantname") @Nullable String name,
			@RequestParam("restaurantdes") @Nullable String des, @RequestParam("restauranttype") @Nullable String type,
			@RequestParam("restaurantaddress") @Nullable String address,
			@RequestParam("restaurantphone") @Nullable String phone,
			@RequestParam("restaurantprice") @Nullable String price, @RequestParam("restaurantid") @Nullable String id,
			@RequestPart("image") MultipartFile image, Model m) {

		String error = "不能輸入空白";
		if (id == "") {
			m.addAttribute("nullError", error);

			return "/Restaurant/BackUserRestaurantRewrite";
		}
		if (name == "") {
			m.addAttribute("nullError2", error);

			return "/Restaurant/BackUserRestaurantRewrite";
		}
		if (des == "") {
			m.addAttribute("nullError3", error);

			return "/Restaurant/BackUserRestaurantRewrite";
		}
		if (type == "") {
			m.addAttribute("nullError4", error);

			return "/Restaurant/BackUserRestaurantRewrite";
		}
		if (price == "") {
			m.addAttribute("nullError5", error);

			return "/Restaurant/BackUserRestaurantRewrite";
		}
		if (address == "") {
			m.addAttribute("nullError6", error);

			return "/Restaurant/BackUserRestaurantRewrite";
		}
		if (phone == "") {
			m.addAttribute("nullError7", error);

			return "/Restaurant/BackUserRestaurantRewrite";
		}
		
		int id2 = Integer.parseInt(id);
		boolean checkRes = dao.findRes(id2);
		if (checkRes == true) {
			m.addAttribute("nullError9", "編號不存在");

			return "/Restaurant/BackUserRestaurantRewrite";
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

//		int id = Integer.parseInt(req.getParameter("restaurantid"));
		int price2 = Integer.parseInt(price);
		

		Restaurant resBean = new Restaurant(id2, name, des, type, price2, address, phone, img);
		dao.reInsertRes(resBean);
		m.addAttribute("success", 1);

		return "/Restaurant/BackUserRestaurantRewrite";

	}
}