package tw.hotel.roomtype.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.hotel.roomtype.model.RoomsBean;
import tw.hotel.roomtype.service.RoomTypeService;

@Controller
@RequestMapping("/admin")
public class RoomAdminController {

	@Autowired
	private RoomTypeService rService;
	
	@GetMapping("/showallroom.admin.controller")
	public String processAction(Model m) {
		List<RoomsBean> beans = rService.findAll();
		m.addAttribute("beans", beans);
//		return "roomType/roomManage";
		return "roomType/backoffice/table0";
	}
	
	@GetMapping("/searchroom.admin.controller")
	public String processSearchAction (Model m, @RequestParam("selection")@Nullable String input
												) {
		List<RoomsBean> beans = null;
		
		if (input == null || input.equals("none") || input.equals("")) {
			beans = rService.findAll();
			m.addAttribute("beans", beans);
			return "roomType/roomManage";
		}
		int capacity = Integer.parseInt(input);
		beans = rService.findByCapacity(capacity);
		m.addAttribute("beans", beans);
		m.addAttribute("selection", input);
		return "roomType/roomManage";
	}
	
	@PostMapping("/searchroom2.admin.controller")
	public String processSearchActionM(Model m, @RequestParam("findInput")@Nullable String input) {
		List<RoomsBean> beans = null;
		beans = rService.findAnyMatch(input);
		m.addAttribute("beans", beans);
		return "roomType/roomManage";
	}
}
