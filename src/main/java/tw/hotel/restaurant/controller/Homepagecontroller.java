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
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.hotel.restaurant.dao.RestaurantDaoImpl;
import tw.hotel.restaurant.model.Arrange;

@Controller
public class Homepagecontroller {
	@GetMapping("/Homepage.controller")
	protected String addArrange(/*HttpServletRequest request*/) {
		/*HttpSession session = request.getSession();
		 Integer attributeValue =  (int) session.getAttribute("userId");
		System.out.println(attributeValue);
		if(attributeValue!=null) {*/
		
		return "/Restaurant/RestaurantHomepage";
		/*}
		else {
			return "/Restaurant/RestaurantHomepage";
		}*/
	}
}
