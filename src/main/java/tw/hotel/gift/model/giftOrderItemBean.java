package tw.hotel.gift.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity @Table(name = "souvenirorderitem")
@Component
public class giftOrderItemBean implements Serializable {
	
	/*
	 create table souvenirorderitem(
		orderitemid int IDENTITY(1,1) PRIMARY KEY,
		giftorderid int,
		sid int ,
		sname nvarchar(MAX) not null,
		sprice money,
		cartnum int	
)
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ORDERITEMID")
	private Integer orderitemid;
	
	
	@ManyToOne
	@JoinColumn(name = "GIFTORDERID")
	@JsonIgnore
	private giftOrderBean giftOrderBean;
	
	@Column(name = "SID")
	private Integer sid;
	@Column(name = "SNAME")
	private String sname;
	@Column(name = "SPRICE")
	private double sprice;
	@Column(name = "CARTNUM")
	private int cartnum;
	
	public giftOrderItemBean() {
		super();
	}
	

	public giftOrderItemBean(tw.hotel.gift.model.giftOrderBean giftOrderBean, Integer sid, String sname, double sprice,
			int cartnum) {
		super();
		this.giftOrderBean = giftOrderBean;
		this.sid = sid;
		this.sname = sname;
		this.sprice = sprice;
		this.cartnum = cartnum;
	}


	public int getCartnum() {
		return cartnum;
	}

	public Integer getOrderitemid() {
		return orderitemid;
	}

	public void setOrderitemid(Integer orderitemid) {
		this.orderitemid = orderitemid;
	}

	public void setCartnum(int cartnum) {
		this.cartnum = cartnum;
	}


	public giftOrderBean getGiftOrderBean() {
		return giftOrderBean;
	}

	public void setGiftOrderBean(giftOrderBean giftOrderBean) {
		this.giftOrderBean = giftOrderBean;
	}

	public Integer getSid() {
		return sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public double getSprice() {
		return sprice;
	}

	public void setSprice(double sprice) {
		this.sprice = sprice;
	}


	@Override
	public String toString() {
		return "giftOrderItemBean [orderitemid=" + orderitemid + ", giftOrderBean=" + giftOrderBean + ", sid=" + sid
				+ ", sname=" + sname + ", sprice=" + sprice + ", cartnum=" + cartnum + "]";
	}
	

	
	
	
	
	
	
	
	
	
}
