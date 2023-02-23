package tw.hotel.roomtype.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.hotel.roomtype.model.RoomsBean;
import tw.hotel.roomtype.service.RoomTypeService;

@Controller
public class ShowUpdateRoomController {
	
	@Autowired
	private RoomTypeService rService;
	
	@PostMapping("/showupdateroom.controller")
	public String ShowUpdateData(Model m, @RequestParam("roomId") String roomId) {
		RoomsBean bean = null;
		List<RoomsBean> beans = rService.findById(roomId);
		for (RoomsBean b : beans) {
			bean = b;
		} // 控制 jsp equipments checkbox 勾選狀態
		String[] equipments = bean.getEquipment().split(" ");
		for (int i = 0; i < equipments.length; i++) {
			if (equipments[i].length() == 0) {
				String key = "e" + i;
				int e = 0;
				m.addAttribute(key, e);
			} else {
				String key = "e" + i;
				int e = 1;
				m.addAttribute(key, e);
			}
		}
		m.addAttribute("equipments", equipments);
		m.addAttribute("bean", bean);
//		return "roomType/roomUpdate";
		return "roomType/backoffice/form2";
	}
}
