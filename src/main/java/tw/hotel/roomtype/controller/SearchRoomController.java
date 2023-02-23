package tw.hotel.roomtype.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.hotel.roomtype.model.RoomsBean;
import tw.hotel.roomtype.service.RoomTypeService;

@Controller
public class SearchRoomController {
	
	@Autowired
	private RoomTypeService rService;
	private Map<String, Integer> conditions;
	
	@GetMapping("/searchroom.controller")
	public String processSearchAction(Model m,
									  @RequestParam("selection")@Nullable String inputCapacity,
									  @RequestParam("minPrice")@Nullable String inputMinPrice,
									  @RequestParam("maxPrice")@Nullable String inputMaxPrice,
									  @RequestParam("cbStatus")@Nullable String inputStatus) {
		conditions = new HashMap<>();
		// 未勾選 搜尋空房checkbox
		if (inputStatus == null) {
			List<RoomsBean> beans = searchAllStatus(inputCapacity, inputMinPrice, inputMaxPrice, inputStatus);
			m.addAttribute("beans", beans);
			m.addAttribute("conditions", conditions);// 儲存 搜尋條件
			return "roomType/roomMain";
		}
		// 勾選 搜尋空房checkbox
		int status = Integer.parseInt(inputStatus);
		List<RoomsBean> beans = searchAvailableRoom(inputCapacity, inputMinPrice, inputMaxPrice, status);
		m.addAttribute("beans", beans);
		m.addAttribute("conditions", conditions);// 儲存 搜尋條件
		return "roomType/roomMain";
	}
	
	public List<RoomsBean> searchAllStatus(String inputCapacity, String inputMinPrice, String inputMaxPrice, String inputStatus) {
		
		conditions.clear();
		
		if (inputMinPrice.equals("")) {// 欄位留空給預設值
			inputMinPrice = "0";
		}
		if (inputMaxPrice.equals("")) {// 欄位留空給預設值
			inputMaxPrice = "99999999";
		}
		int minPrice = Integer.parseInt(inputMinPrice);
		int maxPrice = Integer.parseInt(inputMaxPrice);
		if (minPrice != 0) {
			conditions.put("minPrice", minPrice);
		}
		if (maxPrice != 99999999) {
			conditions.put("maxPrice", maxPrice);
		}
		int capacity = 0;
		// 未選取 容納人數 搜尋條件 選單value="none"
		if (inputCapacity.equals("none")) {
			// 依據 價格區間 搜尋所有房型
			return rService.findByPriceRange(minPrice, maxPrice);
		}
		// 有選取 容納人數 搜尋條件
		capacity = Integer.parseInt(inputCapacity);
		conditions.put("capacity", capacity);
		// 依據 容納人數 和 價格區間 搜尋所有房型
		return rService.findByCapacityAndPriceRange(capacity, minPrice, maxPrice);
	}
	
	public List<RoomsBean> searchAvailableRoom(String inputCapacity, String inputMinPrice, String inputMaxPrice, int status) {
		
		conditions.clear();
		
		if (inputMinPrice.equals("")) {// 欄位留空給預設值
			inputMinPrice = "0";
		}
		if (inputMaxPrice.equals("")) {// 欄位留空給預設值
			inputMaxPrice = "99999999";
		}
		int minPrice = Integer.parseInt(inputMinPrice);
		int maxPrice = Integer.parseInt(inputMaxPrice);
		if (minPrice != 0) {
			conditions.put("minPrice", minPrice);
		}
		if (maxPrice != 99999999) {
			conditions.put("maxPrice", maxPrice);
		}
		int capacity = 0;
		// 未選取 容納人數 搜尋條件 選單value="none"
		if (inputCapacity.equals("none")) {
			// 依據 價格區間 搜尋空房
			return rService.findByStatusAndPriceRange(status, minPrice, maxPrice);
		}
		// 有選取 容納人數 搜尋條件
		capacity = Integer.parseInt(inputCapacity);
		conditions.put("capacity", capacity);
		conditions.put("status", status);
		// 依據 容納人數 和 價格區間 搜尋空房
		return rService.findByCapacityAndStatusAndPriceRange(capacity, status, minPrice, maxPrice);
	}
}
