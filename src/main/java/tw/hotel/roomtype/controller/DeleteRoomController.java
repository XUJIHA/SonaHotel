package tw.hotel.roomtype.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import tw.hotel.roomtype.service.RoomTypeService;

@Controller
public class DeleteRoomController {
	
	@Autowired
	private RoomTypeService rService;
	
	@PostMapping("/deleteroom.controller")
	public String processDeleteAction(Model m, @RequestParam("roomId") String roomId,
										RedirectAttributes attr) {
//		int row = 0;
		rService.deleteById(roomId);
//		attr.addFlashAttribute("row",row);
		return "redirect:admin/showallroom.admin.controller";
	}
	
	@PostMapping("/deleterooms.controller")
	public String processDeleteAction2(Model m, @RequestBody List<String> roomIds) {
		
		rService.deleteByIds(roomIds);
		
		return "redirect:admin/showallroom.admin.controller";
	}
	
	
}