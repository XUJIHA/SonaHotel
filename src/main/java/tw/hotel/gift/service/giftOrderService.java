package tw.hotel.gift.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.hotel.gift.dao.giftOrderItemRepository;
import tw.hotel.gift.dao.giftOrderRepository;
import tw.hotel.gift.model.giftOrderBean;
import tw.hotel.gift.model.giftOrderItemBean;

@Service
@Transactional
public class giftOrderService {
	
	@Autowired
	private giftOrderRepository giftOrderRepository;

	@Autowired
	private giftOrderItemRepository giftOrderItemRepository;
	
	//儲存giftOrderBean
	public giftOrderBean InsertgiftOrder(giftOrderBean gBean) {
		return giftOrderRepository.save(gBean);
	}
	
	//搜尋所有 giftOrderBean (訂單)
	public List<giftOrderBean> findAllOrder(giftOrderBean gBean) {
		return giftOrderRepository.findAll();
	}
	//搜尋所有 giftOrderBean (訂單)
		public List<giftOrderBean> findAllOrderExpectCancel(giftOrderBean gBean) {
			return giftOrderRepository.findAllOrders();
		}
		
	
	// 根據 giftorderid 搜尋 giftOrderBean
	public giftOrderBean findGiftOrderByOrderid(Integer orderid) {
		Optional<giftOrderBean> gop = giftOrderRepository.findById(orderid);
		giftOrderBean giftorder = null;
		if(gop.isPresent()) {
			giftorder = gop.get();
		}
		return giftorder;
	}
	//根據 userid 搜尋 giftOrderBean
	public List<giftOrderBean> findAllOrderByUserid(int userid){
		return giftOrderRepository.findAllByUserid(userid);
	}
	
	public List<giftOrderBean> findAllOrder(){
		return giftOrderRepository.findAll();
	}
	
	public List<giftOrderItemBean> findOrderItem(){
		return giftOrderItemRepository.findAll();
	}
	
	
	//根據 giftorderid 搜尋 giftOrderItemBean
	public List<giftOrderItemBean> findByGiftorderid(int giftorderid) {
		return giftOrderItemRepository.findByGiftorderid(giftorderid);
	}
	
	
	//新增 giftOrderItemBean
	public giftOrderItemBean InsertgiftItem(giftOrderItemBean goBean) {
		return giftOrderItemRepository.save(goBean);
	}
}
