package tw.hotel.restaurant.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.hotel.restaurant.model.Restaurant;
import tw.hotel.restaurant.service.RestaurantDaoService;

@Controller
public class ShowController {
	@Autowired
	private  RestaurantDaoService dao;
	@GetMapping("/ShowController")
	public void processAction(@RequestParam("roomId")@Nullable String roomId, HttpServletResponse response) {
		
		
		List<Restaurant> beans = dao.findRestaurantById(roomId);
		Restaurant bean = null;
		for (Restaurant b : beans) {
			bean = b;
		}
		try {
			Blob blob = bean.getImage();
			if(blob==null) {
				System.out.println("null");

			}
			else {
				InputStream is = blob.getBinaryStream();
			OutputStream os = response.getOutputStream();
			int len = 0;
			byte[] bytes = new byte[8192];
			while ((len = is.read(bytes)) != -1) {
				os.write(bytes, 0, len);
				os.flush();
			}
			os.close();
			is.close();}}
			 catch (IOException | SQLException e) {
			e.printStackTrace();}
		}
		
	}


