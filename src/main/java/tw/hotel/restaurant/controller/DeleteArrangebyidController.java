package tw.hotel.restaurant.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.hotel.restaurant.dao.RestaurantDao;
import tw.hotel.restaurant.service.RestaurantDaoService;

@Controller
@RequestMapping(path="/users")
public class DeleteArrangebyidController  {

	@Autowired
	RestaurantDaoService arrRepo ;
	@PostMapping("/DeleteArrangebyid.controller")

	protected String deleteArr(@RequestParam("arrangenumber")@Nullable String number, Model m)  {
		String error = "不能輸入空白";
		
		int id = Integer.parseInt(number);
		
		arrRepo.deleteArr(id);
		m.addAttribute("success", 1);
		
		return "/orderRoom/orderMemberCenter";
	

	}
}
