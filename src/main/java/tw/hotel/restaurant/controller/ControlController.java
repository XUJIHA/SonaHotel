package tw.hotel.restaurant.controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import tw.hotel.restaurant.model.Arrange;
import tw.hotel.restaurant.model.Restaurant;
import tw.hotel.restaurant.service.RestaurantDaoService;

@Controller
public class ControlController  {
	
	@Autowired
	private  RestaurantDaoService dao ;
	
	@PostMapping("/Controller")
//	@RequestMapping(path ="/Team3/jsp01/ControlServlet", method = RequestMethod.POST)
	protected String controll(@RequestParam("id") String id, Model m) {


		

		if (id.equals("1")) {
			List<Restaurant> list = dao.resALL();
			m.addAttribute("resturant", list);
			return "/Restaurant/AddRestaurant";

		} else if (id.equals("2")) {
			List<Restaurant> list = dao.resALL();
			m.addAttribute("resturant", list);
			return "/Restaurant/DeleteRes";

		} else if (id.equals("3")) {
			List<Restaurant> list = dao.resALL();
			m.addAttribute("resturant", list);
			return "/Restaurant/RewriteRestaurant";

		} else if (id.equals("4")) {
			List<Restaurant> list = dao.resALL();
			m.addAttribute("resturant", list);
			return "/Restaurant/SearchRes";

		} else if (id.equals("5")) {
			List<Arrange> list = dao.arrALL();
			m.addAttribute("arrange", list);
			return "/Restaurant/AddArrange";

		} else if (id.equals("6")) {
			List<Arrange> list = dao.arrALL();
			m.addAttribute("arrange", list);
			return "/Restaurant/DeleteArrange";

		} else if (id.equals("7")) {
			List<Arrange> list = dao.arrALL();
			m.addAttribute("arrange", list);
			return "/Restaurant/RewriteArrange";

		} else {
			List<Arrange> list = dao.arrALL();
			m.addAttribute("arrange", list);
			return "/Restaurant/SearchArrange";

		}
	}
}
