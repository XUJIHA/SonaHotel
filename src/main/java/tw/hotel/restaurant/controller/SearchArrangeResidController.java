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
import tw.hotel.restaurant.model.Arrange;
import tw.hotel.restaurant.service.RestaurantDaoService;

@Controller
public class SearchArrangeResidController  {
	@Autowired
	private  RestaurantDaoService arrRepo ;
	@PostMapping("/SearchArrangeResid.controller")
	protected String searchArrResid(@RequestParam("restaurantid")@Nullable String id, Model m)  {
		String resturantId = id;
		System.out.println(resturantId);
		String error = "不能輸入空白";
		if (id == "") {
			m.addAttribute("nullError3", error);
			
			return "/Restaurant/SearchArrange";
		}
		int int00 = Integer.parseInt(resturantId);
		List<Arrange> list = arrRepo.ArrfindByIdLike(int00);;
		m.addAttribute("arrange", list);
		
		return "/Restaurant/SearchArrangeAns";

	}
}
