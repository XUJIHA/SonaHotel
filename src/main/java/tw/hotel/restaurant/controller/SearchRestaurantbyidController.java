package tw.hotel.restaurant.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.hotel.restaurant.dao.RestaurantDao;
import tw.hotel.restaurant.dao.RestaurantDaoImpl;
import tw.hotel.restaurant.model.Restaurant;
import tw.hotel.restaurant.service.RestaurantDaoService;

//用ID找餐廳
@Controller
public class SearchRestaurantbyidController  {
	@Autowired
	RestaurantDaoService resRepo ;
	
	@PostMapping("/SearchRestaurantbyid.controller")
	protected String searchResid(@RequestParam("restaurantid")@Nullable String id, Model m) {
		String resturantId = id;
		String error = "不能輸入空白";
		if (id == "") {
			m.addAttribute("nullError2", error);
			
			return "/Restaurant/SearchRes";
		}
		int id2 = Integer.parseInt(resturantId);
		List<Restaurant> list =  resRepo.findResById(id2);
		m.addAttribute("resturant", list);
		System.out.println(list);

		
		
		return "/Restaurant/SearchbyidAns";


	}
}
