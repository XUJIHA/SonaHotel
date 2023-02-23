package tw.hotel.coupon.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Component
@Table(name = "coupon")
public class Coupon {

	@Id
	@Column(name = "couponid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int couponId;

	@Column(name = "couponcode")
	private String couponCode;

	@Column(name = "coupontype")
	private String couponType;

	@Column(name = "couponvalue")
	private String couponValue;

	@Column(name = "couponname")
	private String couponName;

	@Column(name = "couponstatus")
	private int couponStatus;

	@Column(name = "generatedate")
	private Date generateDate;
	
	@Column(name = "expirydate")
	private Date expiryDate;
	
	@Column(name = "usedfor")
	private String usedFor;
	
	@Column(name = "orderid")
	private int orderId;
	
	public Coupon() {
	}
	
	public Coupon(String couponCode, String couponType, String couponValue, String couponName, int couponStatus,
			Date generateDate, Date expiryDate) {
		this.couponCode = couponCode;
		this.couponType = couponType;
		this.couponValue = couponValue;
		this.couponName = couponName;
		this.couponStatus = couponStatus;
		this.generateDate = generateDate;
		this.expiryDate = expiryDate;
	}

	public int getCouponId() {
		return couponId;
	}

	public void setCouponId(int couponId) {
		this.couponId = couponId;
	}

	public String getCouponCode() {
		return couponCode;
	}

	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}

	public String getCouponType() {
		return couponType;
	}

	public void setCouponType(String couponType) {
		this.couponType = couponType;
	}

	public String getCouponValue() {
		return couponValue;
	}

	public void setCouponValue(String couponValue) {
		this.couponValue = couponValue;
	}

	public String getCouponName() {
		return couponName;
	}

	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}

	public int getCouponStatus() {
		return couponStatus;
	}

	public void setCouponStatus(int couponStatus) {
		this.couponStatus = couponStatus;
	}

	public Date getGenerateDate() {
		return generateDate;
	}

	public void setGenerateDate(Date generateDate) {
		this.generateDate = generateDate;
	}

	public Date getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}
	
	public String getUsedFor() {
		return usedFor;
	}

	public void setUsedFor(String usedFor) {
		this.usedFor = usedFor;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	@Override
	public String toString() {
		return "Coupon [couponId=" + couponId + ", couponCode=" + couponCode + ", couponType=" + couponType
				+ ", couponValue=" + couponValue + ", couponName=" + couponName + ", couponStatus=" + couponStatus
				+ ", generateDate=" + generateDate + ", expiryDate=" + expiryDate + ", usedFor=" + usedFor
				+ ", orderId=" + orderId + "]";
	}

}
