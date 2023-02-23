package tw.hotel.roomtype.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import tw.hotel.roomtype.model.RoomsBean;
import tw.hotel.roomtype.service.RoomTypeService;

@Controller
public class UpdateRoomController {

	@Autowired
	private RoomTypeService rService;
	private Map<String, String> errors;

	@PostMapping("/updateroom.controller")
	public String processUpdateAction(Model m, @RequestParam("roomId")@Nullable String InputRoomId,
			@RequestParam("capacity")@Nullable String inputCapacity, @RequestParam("name")@Nullable String inputName,
			@RequestParam("status")@Nullable String inputStatus, @RequestParam("bed")@Nullable String inputBed,
			@RequestParam("size")@Nullable String inputSize, @RequestParam("price")@Nullable String inputPrice,
			@RequestPart("img")@Nullable MultipartFile inputFile, @RequestParam("description")@Nullable String inputDescription,
			@RequestParam("cbEquipment1")@Nullable String equipment1, @RequestParam("cbEquipment2")@Nullable String equipment2,
			@RequestParam("cbEquipment3")@Nullable String equipment3, @RequestParam("cbEquipment4")@Nullable String equipment4,
			@RequestParam("cbEquipment5")@Nullable String equipment5, @RequestParam("cbEquipment6")@Nullable String equipment6,
			@RequestParam("cbEquipment7")@Nullable String equipment7, @RequestParam("cbEquipment8")@Nullable String equipment8
			) {
		errors = new HashMap<String, String>();
		m.addAttribute("errors", errors);
		RoomsBean bean = checkInputText(InputRoomId, inputName, inputStatus, inputCapacity, inputBed, inputSize, inputPrice, inputFile,
						inputDescription, equipment1, equipment2, equipment3, equipment4, equipment5, equipment6, equipment7, equipment8);
		if (!errors.isEmpty()) {
//			return "roomType/roomUpdate";
			return "roomType/backoffice/form2";
			
		}
		int row = rService.updateRoom(bean);
		// 控制 jsp equipments checkbox 勾選狀態
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
		m.addAttribute("row", row);
		m.addAttribute("bean", bean);
//		return "roomType/roomUpdate";
		return "roomType/backoffice/form2";
	}
	
	// 檢查欄位輸入格式
		private RoomsBean checkInputText(String inputRoomId, String inputName, String inputStatus, String inputCapacity, String inputBed,
				String inputSize, String inputPrice, MultipartFile inputFile, String inputDescription, String equipment1, String equipment2,
				String equipment3, String equipment4, String equipment5, String equipment6, String equipment7, String equipment8 ) {
			errors.clear();// 清空全域變數裡的值
			// 檢查房間編號
			String roomId = inputRoomId; 
			// 房名留空給預設值
			String name = inputName.trim();
			if (name.equals("")) name = "未命名客房";
			// 房間狀態為radio button 不需判斷直接轉整數型別
			int status = Integer.parseInt(inputStatus);
			// 變數初始化
			int capacity = 0; int bed = 0; double size = 0.0; int price = 0;
			// 檢查容納人數輸入欄位
			inputCapacity = inputCapacity.trim();
			if (inputCapacity.matches("\\d+")) {capacity = Integer.parseInt(inputCapacity);
			} else if (inputCapacity.equals("")) {errors.put("capacityNull", "必填欄位不可空白!! ");
			} else if (inputCapacity.matches("\\D+")) {errors.put("capacityFormatError", "只能輸入數字!!");}
			// 檢查床數輸入欄位
			inputBed = inputBed.trim();
			if (inputBed.matches("\\d+")) {bed = Integer.parseInt(inputBed);
			} else if (inputBed.matches("\\D+")) {errors.put("bedFormatError", "只能輸入數字!!");}
			// 檢查坪數輸入欄位
			inputSize = inputSize.trim();
			if (inputSize.matches("\\d+.\\d*")) {size = Double.parseDouble(inputSize);
			} else if (inputSize.matches("\\D+")) {errors.put("sizeFormatError", "只能輸入數字!!");}
			// 檢查價格輸入欄位
			inputPrice = inputPrice.trim();
			if (inputPrice.matches("\\d+")) {price = Integer.parseInt(inputPrice);
			} else if (inputPrice.matches("\\D+")) {errors.put("priceFormatError", "只能輸入數字!!");}
			
			Blob img = null;
			try {
				if (inputFile.getSize() != 0) {
					InputStream is = inputFile.getInputStream();
					byte[] bytes = is.readAllBytes();
					img = new SerialBlob(bytes);
				} else {
					List<RoomsBean> beans = rService.findById(roomId);
					for (RoomsBean b : beans) {
						img = b.getImg();
					}
				}
			} catch (IOException | SQLException e) {
				e.printStackTrace();
			}// 處理 equipment checkbox 的值
			String description = inputDescription;
			if (equipment1==null) equipment1 = "";
			if (equipment2==null) equipment2 = "";
			if (equipment3==null) equipment3 = "";
			if (equipment4==null) equipment4 = "";
			if (equipment5==null) equipment5 = "";
			if (equipment6==null) equipment6 = "";
			if (equipment7==null) equipment7 = "";
			if (equipment8==null) equipment8 = "";
			String equipment = String.format("%s %s %s %s %s %s %s %s", 
								equipment1, equipment2, equipment3,equipment4,equipment5,equipment6,equipment7,equipment8);
			// 以上處理好的輸入包裝成一個bean 回傳給controller
			RoomsBean bean = new RoomsBean(roomId, name, status, capacity, bed, size, price, img, description, equipment);
			return bean;
		}
}
