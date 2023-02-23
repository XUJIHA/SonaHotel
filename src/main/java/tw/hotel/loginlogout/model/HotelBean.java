package tw.hotel.loginlogout.model;



import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="customer")
@Component
public class HotelBean {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="USERID")
	private Integer userid;	//使用者id

	@Column(name = "USERNAME")
	private String username;		//使用者姓名

	@Column(name = "USERPASSWORD")
	private String userpassword;	//使用者密碼
	
	@Column(name = "USEREMAIL")
	private String useremail;	//使用者EMAIL
	
	@Column(name = "USERPHONE")
	private String userphone;    //使用者電話號碼
	
	@Column(name = "USERIDENTITY")
	private String useridentity;      //使用者身分證字號
	
	@Column(name = "USERBIRTHDAY")
	private String userbirthday;      //使用者生日
	
	@Column(name = "USERREGISTRATION")
	private String userregistration;  //使用者日期
	
	@Column(name = "USERGENDER")
	private String usergender;  		//使用者性別
	
	@Column(name = "USERCOUNTRY")
	private String usercountry;  	//使用者國家
	
	@Column(name = "USERADDRESS")
	private String useraddress;  	//使用者地址
	
	@Column(name = "USERSTATUS")
	private String userstatus;  	//使用者信箱驗證狀態
	
	
	public HotelBean() {	
	}

	public HotelBean(Integer userid, String username, String userpassword, String useremail, String userphone, String usergender, String usercountry,
			String useraddress,String useridentity, String userbirthday, String userregistration, String userstatus) {
		this.userid = userid;
		this.username = username;
		this.userpassword = userpassword;
		this.useremail = useremail;
		this.userphone = userphone;
		this.usergender = usergender;
		this.usercountry = usercountry;
		this.useraddress = useraddress;
		this.useridentity = useridentity;
		this.userbirthday = userbirthday;
		this.userregistration = userregistration;
		this.userstatus = userstatus;
	}

	public HotelBean(String username, String userpassword, String useremail, String userphone, String usergender, String usercountry, String useraddress, String useridentity,
			String userbirthday, String userregistration, String userstatus) {
		this.username = username;
		this.userpassword = userpassword;
		this.useremail = useremail;
		this.userphone = userphone;
		this.usergender = usergender;
		this.usercountry = usercountry;
		this.useraddress = useraddress;
		this.useridentity = useridentity;
		this.userbirthday = userbirthday;
		this.userregistration = userregistration;
		this.userstatus = userstatus;
	}

	public HotelBean(Integer userid, String username, String userpassword, String useremail, String userphone,
			String useridentity, String userbirthday, String userregistration, String usergender, String usercountry,
			String useraddress) {
		super();
		this.userid = userid;
		this.username = username;
		this.userpassword = userpassword;
		this.useremail = useremail;
		this.userphone = userphone;
		this.useridentity = useridentity;
		this.userbirthday = userbirthday;
		this.userregistration = userregistration;
		this.usergender = usergender;
		this.usercountry = usercountry;
		this.useraddress = useraddress;
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



	public String getUserpassword() {
		return userpassword;
	}



	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
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



	public String getUseridentity() {
		return useridentity;
	}



	public void setUseridentity(String useridentity) {
		this.useridentity = useridentity;
	}



	public String getUserbirthday() {
		return userbirthday;
	}



	public void setUserbirthday(String userbirthday) {
		this.userbirthday = userbirthday;
	}



	public String getUserregistration() {
		return userregistration;
	}



	public void setUserregistration(String userregistration) {
		this.userregistration = userregistration;
	}

	public String getUsergender() {
		return usergender;
	}

	public void setUsergender(String usergender) {
		this.usergender = usergender;
	}

	public String getUsercountry() {
		return usercountry;
	}

	public void setUsercountry(String usercountry) {
		this.usercountry = usercountry;
	}

	public String getUseraddress() {
		return useraddress;
	}

	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}

	public String getUserstatus() {
		return userstatus;
	}

	public void setUserstatus(String userstatus) {
		this.userstatus = userstatus;
	}

	@Override
	public String toString() {
		return "HotelBean [userid=" + userid + ", username=" + username + ", userpassword=" + userpassword
				+ ", useremail=" + useremail + ", userphone=" + userphone + ", useridentity=" + useridentity
				+ ", userbirthday=" + userbirthday + ", userregistration=" + userregistration + ", usergender="
				+ usergender + ", usercountry=" + usercountry + ", useraddress=" + useraddress + ", userstatus="
				+ userstatus + "]";
	}

	public HotelBean(String userpassword, String useremail) {
		this.userpassword = userpassword;
		this.useremail = useremail;
	}

	

		
}
