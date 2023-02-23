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

@Controller
public class SearchRestaurantbyaddressController {
	@Autowired
	RestaurantDaoService resRepo ;
	@PostMapping("/SearchRestaurantbyaddress.controller")
	protected String searchResAddress(@RequestParam("resturantaddress")@Nullable String address, Model m) {
		String resturantaddress = address;
		System.out.println(resturantaddress);
		String error = "不能輸入空白";
		if (address == "") {
			m.addAttribute("nullError5", error);
		
			return "/Restaurant/SearchRes";
		}
		List<Restaurant> list = resRepo.findResByAddress(address);
		m.addAttribute("resturant", list);

		return "/Restaurant/SearchbyidAns";

	}
}
