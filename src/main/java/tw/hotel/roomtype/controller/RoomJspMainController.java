package tw.hotel.roomtype.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RoomJspMainController {
	@GetMapping("/insertroommain.controller")
	public String processShowInsertAction(Model m) {
//		return "roomType/roomInsert";
		return "roomType/backoffice/form";
	}
	
}
