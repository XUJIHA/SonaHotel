package tw.hotel.gift.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import tw.hotel.gift.model.giftOrderItemBean;

public interface giftOrderItemRepository extends JpaRepository<giftOrderItemBean, Integer> {
	
	//根據giftorderid 顯示orderitem
	@Query(value = "Select * from souvenirorderitem where giftorderid = ?1",nativeQuery = true)
	public List<giftOrderItemBean> findByGiftorderid(int giftorderid);
//	public List<giftOrderItemBean> findByGiftorderid(String giftorderid);
}
