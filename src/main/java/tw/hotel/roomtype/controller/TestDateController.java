package tw.hotel.roomtype.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import tw.hotel.orderRoom.model.Orders;
import tw.hotel.orderRoom.model.OrdersRepository;
// 尚未完成
@RestController
public class TestDateController {
	
	@Autowired
	private OrdersRepository oRepo;
	
	@PostMapping("/checkdate.controller")
	public String processCheckAvailableAction(@RequestParam("roomId")@Nullable String roomId,
											@RequestParam("checkin")@Nullable String inputCheckin,
											@RequestParam("checkout")@Nullable String inputCheckout,
											HttpServletRequest req) {
		HttpSession session = req.getSession();
		System.out.println("-----------------------------------------------1" + inputCheckin + " / "+ inputCheckout );
		StringBuilder result = new StringBuilder();
		if (inputCheckin.equals("") || inputCheckout.equals("")) {
			result.append("請選擇欲入住和退房日期 !!");
			System.out.println("-----------------------------------------------2" + inputCheckin + " / "+ inputCheckout );
			return result.toString();
		}
		System.out.println("-----------------------------------------------3" + inputCheckin + " / "+ inputCheckout );
		SimpleDateFormat inputSdf = new SimpleDateFormat("dd MMMM, yyyy", Locale.ENGLISH);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date checkin1 = null;
		Date checkout1 = null;
		Date checkin = null;
		Date checkout = null;
		try {
			checkin1 = inputSdf.parse(inputCheckin);
			checkout1 = inputSdf.parse(inputCheckout);
			String formattedCheckin = sdf.format(checkin1);
			String formattedCheckout = sdf.format(checkout1);
			checkin = sdf.parse(formattedCheckin);
			checkout = sdf.parse(formattedCheckout);
			session.setAttribute("checkinDate", formattedCheckin);
			session.setAttribute("checkoutDate", formattedCheckout);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		System.out.println("-----------------------------------------------4" + checkin + " / "+ checkout );
		List<Orders> resultList = oRepo.checkAvailable(roomId, checkin, checkout);
		if (resultList.size()==0) {
			result.append("該日期區間尚無其他人訂房 !!");
			System.out.println("-----------------------------------------------5" + result.toString().length());
			return result.toString();
		}
		result.append("該日期區間已有人訂房 :\n\n");
		resultList.forEach((orders) -> {result.append(sdf.format(orders.getCheckindate()) + " ~ " + 
													  sdf.format(orders.getCheckoutdate()) + "\n");});
		System.out.println("-----------------------------------------------6" + result.toString());
		return result.toString();
	}

}
