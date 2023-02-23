package tw.hotel.roomtype.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.hotel.roomtype.model.RoomsBean;
import tw.hotel.roomtype.service.RoomTypeService;

@Controller
public class ShowRoomDetailsController {
	
	@Autowired
	private RoomTypeService rService;
	
	@PostMapping("/showroomdetails.controller")
	public String processAction(@RequestParam("roomId")@Nullable String roomId, Model m) {
		List<RoomsBean> beans = rService.findById(roomId);
		RoomsBean bean = null;
		for (RoomsBean b : beans) {
			bean = b;
		}
		m.addAttribute("bean", bean);
		return "roomType/roomDetails";
	}
}
