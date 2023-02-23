package tw.hotel.restaurant.controller;

import java.io.IOException;
import java.io.InputStream;
import java.security.Principal;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.hotel.loginlogout.model.HotelBean;
import tw.hotel.loginlogout.service.LoginService;
import tw.hotel.restaurant.dao.RestaurantDao;
import tw.hotel.restaurant.dao.RestaurantDaoImpl;
import tw.hotel.restaurant.model.Restaurant;
import tw.hotel.restaurant.service.RestaurantDaoService;

@Controller

public class SearchRestaurantController {
	@Autowired
	private RestaurantDaoService resRepo;

	@Autowired
	private LoginService loginService1;
	
	@GetMapping("/SearchRestaurant.controller")
	protected String searchAllRes(Model m) {

		List<Restaurant> list = resRepo.resALL();
		
		
		
		m.addAttribute("resturant", list);
		
		return "/Restaurant/SearchbyidAns";
	}
}
