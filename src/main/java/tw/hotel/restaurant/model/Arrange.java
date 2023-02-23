package tw.hotel.restaurant.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "arrange")
@Component
public class Arrange {

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Arrange [arrangenumber=").append(arrangenumber).append(", arrangename=").append(arrangename)
		.append(", arrangephone=").append(arrangephone).append(", people=").append(people).append(", day=")
		.append(day).append(", eattime=").append(eattime).append(", resname=").append(resname)
		.append(", restaurantid=").append(restaurantid).append(", accountid=").append(accountid)
		.append(", price=").append(price).append("]");
		return builder.toString();
	}
	

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ARRANGE_NUMBER")
	private Integer arrangenumber;

	public Arrange(Integer arrangenumber, String arrangename, String arrangephone, Integer people, String day,
			String eattime, int restaurantid,String resname) {
		super();
		this.arrangenumber = arrangenumber;
		this.arrangename = arrangename;
		this.arrangephone = arrangephone;
		this.people = people;
		this.day = day;
		this.eattime = eattime;
		this.restaurantid = restaurantid;
		this.resname = resname;
	}

	public String getResname() {
		return resname;
	}

	public void setResname(String resname) {
		this.resname = resname;
	}

	@Column(name = "ARRANGE_NAME")
	private String arrangename;
	@Column(name = "ARRANGE_PHONE")
	private String arrangephone;
	@Column(name = "PEOPLE")
	private Integer people;
	@Column(name = "DAY")
	private String day;
	@Column(name = "EAT_TIME")
	private String eattime;
	@Column(name = "RESTAURANT_Name")
	private String resname;
	
	@Column(name ="fk_RESTAURANT_Id")
	private int restaurantid;
	//新增加的佩佩參數
	@Column(name ="accountid")
	private int accountid;
	
	@Column(name ="price")
	private int price;
	
	
	public Arrange() {
	}
	
	public Arrange( String arrangename, String arrangephone, Integer people, String day,
			String eattime, int restaurantid) {
		this.arrangename = arrangename;
		this.arrangephone = arrangephone;
		this.people = people;
		this.day = day;
		this.eattime = eattime;
		this.restaurantid = restaurantid;
		
	}



	public Arrange( String arrangename, String arrangephone, Integer people, String day,
			String eattime, String resname, int restaurantid, int accountid, int price) {
		super();
		this.arrangenumber = arrangenumber;
		this.arrangename = arrangename;
		this.arrangephone = arrangephone;
		this.people = people;
		this.day = day;
		this.eattime = eattime;
		this.resname = resname;
		this.restaurantid = restaurantid;
		this.accountid = accountid;
		this.price = price;
	}
	public Arrange( int arrangenumber,String arrangename, String arrangephone, Integer people, String day,
			String eattime, String resname, int restaurantid, int accountid, int price) {
		super();
		this.arrangenumber = arrangenumber;
		this.arrangename = arrangename;
		this.arrangephone = arrangephone;
		this.people = people;
		this.day = day;
		this.eattime = eattime;
		this.resname = resname;
		this.restaurantid = restaurantid;
		this.accountid = accountid;
		this.price = price;
	}

	public int getAccountid() {
		return accountid;
	}

	public void setAccountid(int accountid) {
		this.accountid = accountid;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Integer getArrangenumber() {
		return arrangenumber;
	}

	public void setArrangenumber(Integer arrangenumber) {
		this.arrangenumber = arrangenumber;
	}

	public String getArrangename() {
		return arrangename;
	}

	public void setArrangename(String arrangename) {
		this.arrangename = arrangename;
	}

	public String getArrangephone() {
		return arrangephone;
	}

	public void setArrangephone(String arrangephone) {
		this.arrangephone = arrangephone;
	}

	public Integer getPeople() {
		return people;
	}

	public void setPeople(Integer people) {
		this.people = people;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getEattime() {
		return eattime;
	}

	public void setEattime(String eattime) {
		this.eattime = eattime;
	}

	public int getRestaurantid() {
		return restaurantid;
	}

	public Arrange(String arrangename, String arrangephone, Integer people, String day, String eattime,
			Restaurant restaurant) {
		super();
		this.arrangename = arrangename;
		this.arrangephone = arrangephone;
		this.people = people;
		this.day = day;
		this.eattime = eattime;
	}

	public void setRestaurantid(int restaurantid) {
		this.restaurantid = restaurantid;
	}



}
