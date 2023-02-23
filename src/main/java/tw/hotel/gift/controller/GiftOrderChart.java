package tw.hotel.gift.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import tw.hotel.gift.model.giftOrderBean;
import tw.hotel.gift.service.giftOrderService;

@Controller
//@RequestMapping("")
public class GiftOrderChart {
	
	@Autowired
	private giftOrderService oService;
	
	
	//找到所有伴手禮訂單
	@GetMapping(path = "/totalamount.controller")
	public String totalAmount(Model m) {
		
		List<giftOrderBean> giftOrderBeans = oService.findAllOrder();
		double totalAmount = 0.0;
		for (giftOrderBean order : giftOrderBeans) {
		    totalAmount += order.getTotalamount();
		}
		m.addAttribute("totalAmount",totalAmount);

		
		return "Gift/giftBackendPieChart";
	}
}
