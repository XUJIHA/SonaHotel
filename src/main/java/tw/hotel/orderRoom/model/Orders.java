package tw.hotel.orderRoom.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "orders")
@Component
public class Orders {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ORDER_ID")
	private Integer orderid;

	@Column(name = "USER_ID")
	private Integer userid;
	
	@Column(name = "ROOM_ID")
	private String roomid;
	
	@Column(name = "COUPON_ID")
	private Integer couponid;
	
	@Column(name = "ORDER_DATE")
	private Date orderdate;

	@Column(name = "CHECKIN_DATE")
	private Date checkindate;

	@Column(name = "CHECKOUT_DATE")
	private Date checkoutdate;

	@Column(name = "CANCELTAG")
	private String canceltag;

//		@OneToOne(cascade = CascadeType.ALL)
//		@JoinColumn(name = "fk_user_name")
	@Column(name = "USER_NAME")
	private String username;

//		@OneToOne(cascade = CascadeType.ALL)
//		@JoinColumn(name = "fk_room_name")
	@Column(name = "ROOM_NAME")
	private String roomname;

//		@OneToOne(cascade = CascadeType.ALL)
//		@JoinColumn(name = "fk_room_price")
	@Column(name = "PRICE")
	private int price;

	public Orders() {
	}
	
	public Integer getCouponid() {
		return couponid;
	}

	public void setCouponid(Integer couponid) {
		this.couponid = couponid;
	}

	public Integer getOrderid() {
		return orderid;
	}
	
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	public Date getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}

	public Date getCheckindate() {
		return checkindate;
	}

	public void setCheckindate(Date checkindate) {
		this.checkindate = checkindate;
	}

	public Date getCheckoutdate() {
		return checkoutdate;
	}

	public void setCheckoutdate(Date checkoutdate) {
		this.checkoutdate = checkoutdate;
	}

	public String getCanceltag() {
		return canceltag;
	}

	public void setCanceltag(String canceltag) {
		this.canceltag = canceltag;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRoomname() {
		return roomname;
	}

	public void setRoomname(String roomname) {
		this.roomname = roomname;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getRoomid() {
		return roomid;
	}

	public void setRoomid(String roomid) {
		this.roomid = roomid;
	}

}
