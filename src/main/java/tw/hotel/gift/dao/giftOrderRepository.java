package tw.hotel.gift.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import tw.hotel.gift.model.giftOrderBean;

public interface giftOrderRepository extends JpaRepository<giftOrderBean, Integer> {
	
	//選擇全部"沒有"取消的訂單
	@Query(value = "Select * from souvenirorder where cancletag is null", nativeQuery = true)
	public List<giftOrderBean> findAllOrders();
	
	//根據 userid -> 選擇全部"沒有"取消的訂單
	@Query(value = "Select * from souvenirorder where cancletag is null and userid = ?1",nativeQuery = true)
	public List<giftOrderBean> findAllByUserid(int userid);
	
	
	
	
}
