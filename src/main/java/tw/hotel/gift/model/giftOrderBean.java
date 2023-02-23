package tw.hotel.gift.model;

import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity @Table(name = "souvenirorder")
@Component
public class giftOrderBean {
	
	/*
	create table souvenirorder(
		giftorderid int IDENTITY(1,1) PRIMARY KEY,
		userid int,
		username nvarchar(20) ,
		useremail nvarchar(50) NOT NULL UNIQUE,
		userphone nvarchar(20),
		useraddress nvarchar(max),
		orderdate DateTime,
		totalamount money,
		cancletag Char(1)
)
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "GIFTORDERID")
	private Integer giftorderid;
	@Column(name = "USERID")
	private Integer userid;
	@Column(name = "USERNAME")
	private String username;
	@Column(name = "USEREMAIL")
	private String useremail;
	@Column(name = "USERPHONE")
	private String userphone;
	@Column(name = "USERADDRESS")
	private String useraddress;
	@Column(name = "ORDERDATE")
	private Date orderdate;
	@Column(name = "TOTALAMOUNT")
	private double totalamount;
	@Column(name = "CANCLETAG")
	private Integer  cancletag;
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "giftOrderBean")
	private Collection<giftOrderItemBean> giftOrderItemBeans;
	
	public giftOrderBean() {
		
	}
	
	

	public giftOrderBean(Integer giftorderid, Integer userid, String username, String useremail, String userphone,
			String useraddress, Date orderdate, double totalamount, Integer cancletag,
			List<giftOrderItemBean> giftOrderItemBeans) {
		super();
		this.giftorderid = giftorderid;
		this.userid = userid;
		this.username = username;
		this.useremail = useremail;
		this.userphone = userphone;
		this.useraddress = useraddress;
		this.orderdate = orderdate;
		this.totalamount = totalamount;
		this.cancletag = cancletag;
		this.giftOrderItemBeans = giftOrderItemBeans;
	}



	public void setCancletag(Integer cancletag) {
		this.cancletag = cancletag;
	}

	public Integer getGiftorderid() {
		return giftorderid;
	}

	public void setGiftorderid(Integer giftorderid) {
		this.giftorderid = giftorderid;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public String getUseraddress() {
		return useraddress;
	}

	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}

	public Date getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}

	public double getTotalamount() {
		return totalamount;
	}

	public void setTotalamount(double totalamount) {
		this.totalamount = totalamount;
	}

	public Collection<giftOrderItemBean> getGiftOrderItemBeans() {
		return giftOrderItemBeans;
	}

	public void setGiftOrderItemBeans(List<giftOrderItemBean> giftOrderItemBeans) {
		this.giftOrderItemBeans = giftOrderItemBeans;
	}

	public Integer getCancletag() {
		return cancletag;
	}



	@Override
	public String toString() {
		return "giftOrderBean [giftorderid=" + giftorderid + ", userid=" + userid + ", username=" + username
				+ ", useremail=" + useremail + ", userphone=" + userphone + ", useraddress=" + useraddress
				+ ", orderdate=" + orderdate + ", totalamount=" + totalamount + ", cancletag=" + cancletag + "]";
	}
	
	

	

	
	
	
}
