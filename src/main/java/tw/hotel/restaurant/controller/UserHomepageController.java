package tw.hotel.restaurant.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sun.istack.Nullable;

import tw.hotel.restaurant.model.Arrange;
import tw.hotel.restaurant.model.ArrangeRepository;
import tw.hotel.restaurant.service.RestaurantDaoService;

@Controller

public class UserHomepageController {
	@Autowired
	private ArrangeRepository dao ;
	@GetMapping("/UserHomepageController")
	protected String UserHomepage( ) {
		
		
		
		return "/Restaurant/UserRestaurantHomepage";
	}
	/*
	@PostMapping("/OrderState")
	public void getSelectedOption(@RequestParam("selectedOption") String selectedOption,@RequestParam("restaurantId") String restaurantId,@RequestParam("radioValue") String time) {
		System.out.println(selectedOption);
		System.out.println(restaurantId);
		int id = Integer.parseInt(restaurantId);
		
		List<Arrange> arrange=dao.ArrfindByIdTimePplLike(restaurantId,time,selectedOption);
		System.out.println(arrange);
		}*/
	}
	

