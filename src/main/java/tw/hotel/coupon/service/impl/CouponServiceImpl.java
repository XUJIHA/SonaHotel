package tw.hotel.coupon.service.impl;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.hotel.coupon.dao.CouponRepository;
import tw.hotel.coupon.model.CodeGenerator;
import tw.hotel.coupon.model.Coupon;
import tw.hotel.coupon.service.CouponService;

@Service
public class CouponServiceImpl implements CouponService{
	
	@Autowired
	private CouponRepository cRepo;

	@Override
	public Coupon findByCouponId(int id) {
		return cRepo.findByCouponId(id);
	}

	@Override
	public Coupon findByCouponStatus(int status) {
		return cRepo.findByCouponStatus(status);
	}

	@Override
	public Coupon findByCouponCode(String code) {
		return cRepo.findByCouponCode(code);
	}

	@Override
	public List<Coupon> findAll() {
		return cRepo.findAll();
	}

	@Override
	public List<Coupon> findAllByStatus(int status) {
		return cRepo.findAllByStatus(status);
	}
	
	@Override
	public void updateStatusById(int couponId, int status) {
		Coupon coupon = findByCouponId(couponId);
		coupon.setCouponStatus(status);
		cRepo.save(coupon);
	}
	
	@Override
	public void deleteById(Integer id) {
		cRepo.deleteById(id);
	}
	
	@Override
	public void deleteByIds(List<String> ids) {
		Iterator<String> it = ids.iterator();
		while (it.hasNext()) {
			int id = Integer.parseInt(it.next());
			deleteById(id);
		}
	}

	@Override
	public boolean hasCode(String code) {
		Coupon coupon = findByCouponCode(code);
		if (coupon != null) {
			return true;
		}
		return false;
	}
	
	@Override
	public boolean isUnusedCode(String code) {
		Coupon coupon = findByCouponCode(code);
		if (coupon != null) {
			return coupon.getCouponStatus() == 1 ? true : false;
		}
		return false;
	}
	
	@Override
	public boolean isValidCode(String code) {
		Coupon coupon = findByCouponCode(code);
		if(coupon != null) {
			Date date = new Date();
			return coupon.getExpiryDate().after(date);
		}
		return false;
	}
	
	@Override
	public String getDiscountValueByCode(String code) {
		Coupon coupon = findByCouponCode(code);
		return coupon.getCouponValue();
	}

	@Override
	public void disableCodeByRoomOrder(String code, int orderId) {
		Coupon coupon = findByCouponCode(code);
		coupon.setCouponStatus(0);
		coupon.setOrderId(orderId);
		coupon.setUsedFor("訂房消費");
		cRepo.save(coupon);
	}
	
	@Override
	public void disableCodeByGiftOrder(String code, int orderId) {
		Coupon coupon = findByCouponCode(code);
		coupon.setCouponStatus(0);
		coupon.setOrderId(orderId);
		coupon.setUsedFor("伴手禮消費");
		cRepo.save(coupon);
	}
	
	@Override
	public void disableCodeByRestaurant(String code, int orderId) {
		Coupon coupon = findByCouponCode(code);
		coupon.setCouponStatus(0);
		coupon.setOrderId(orderId);
		coupon.setUsedFor("餐廳消費");
		cRepo.save(coupon);
	}

	@Override
	public Coupon generateCoupon(String couponType, String couponValue, String couponName, Date expiryDate) {
		Date generateDate = new Date();
		String couponCode = CodeGenerator.generateCode();
		Coupon coupon = new Coupon(couponCode, couponType, couponValue, couponName, 1, generateDate, expiryDate);
		cRepo.save(coupon);
		return coupon;
	}

	@Override
	public String checkCode(String code) {
		if (!hasCode(code)) {
			return "無效折扣碼";
		}
		if (!isValidCode(code)) {
			return "折扣碼已過期";
		}
		if (!isUnusedCode(code)) {
			return "折扣碼已被使用";
		}
		return "ok";
	}

}
