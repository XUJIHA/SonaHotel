package tw.hotel.restaurant.controller;

import java.io.IOException;
import java.security.Principal;
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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.hotel.loginlogout.model.HotelBean;
import tw.hotel.loginlogout.service.LoginService;
import tw.hotel.restaurant.dao.RestaurantDao;
import tw.hotel.restaurant.dao.RestaurantDaoImpl;
import tw.hotel.restaurant.model.Arrange;
import tw.hotel.restaurant.service.RestaurantDaoService;

@Controller
@RequestMapping(path="/users")
public class SearchArrangeMemberNameController  {
	@Autowired
	private  RestaurantDaoService arrRepo ;
	@Autowired
	private  LoginService loginService1 ;
	@GetMapping("/SearchArrangename.controller")
	protected String searchArrName(Principal  pc1, Model m)  {
		
		HotelBean UserAllData=loginService1.findUserEmail2(pc1.getName());
		String name=UserAllData.getUsername();
		String error = "不能輸入空白";
		
		
		

		List<Arrange> list = arrRepo.ArrfindByNameLike(name);
		m.addAttribute("arrange", list);
		
		return "/Restaurant/MemberUsersArrange";

	}
}
