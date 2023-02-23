package tw.hotel.coupon.service;

import java.util.Date;
import java.util.List;

import tw.hotel.coupon.model.Coupon;

public interface CouponService {
	
	Coupon findByCouponId(int id);
	
	Coupon findByCouponStatus(int status);
	
	Coupon findByCouponCode(String code);
	
	List<Coupon> findAll();
	
	List<Coupon> findAllByStatus(int status);
	
	void updateStatusById(int couponId, int status);
	
	void deleteById(Integer id);
	
	void deleteByIds(List<String> ids);
	
	boolean hasCode(String code);
	
	boolean isValidCode(String code);
	
	boolean isUnusedCode(String code);
	
	String checkCode(String code);
	
	void disableCodeByRoomOrder(String code, int orderId);

	void disableCodeByGiftOrder(String code, int orderId);
	
	void disableCodeByRestaurant(String code, int orderId);
	
	String getDiscountValueByCode(String code);
	
	Coupon generateCoupon(String couponType, String couponValue, String couponName, Date expiryDate);
	
}
