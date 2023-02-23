package tw.hotel.roomtype.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import tw.hotel.roomtype.model.RoomsBean;
import tw.hotel.roomtype.service.RoomTypeService;

@Controller
public class ShowAllRoomController {
	
	@Autowired
	private RoomTypeService rService;

	
	@GetMapping("/showallroom.controller")
	public String processAction(Model m) {
		List<RoomsBean> beans = rService.findAll();
		m.addAttribute("beans", beans);
		return "roomType/roomMain";
	}
}
