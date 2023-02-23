package tw.hotel.coupon.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import tw.hotel.coupon.model.Coupon;

public interface CouponRepository extends JpaRepository<Coupon, Integer> {
	
	Coupon findByCouponId(int id);
	
	Coupon findByCouponStatus(int status);
	
	Coupon findByCouponCode(String code);
	
	List<Coupon> findAll();
	
	@Query(value = "from Coupon where couponStatus = ?1")
	List<Coupon> findAllByStatus(int status);
	
}
