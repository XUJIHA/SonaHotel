package tw.hotel.restaurant.model;

import java.sql.Blob;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="Restaurant")
@Component
public class Restaurant {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "RESTAURANT_Id")
	private Integer restaurantid;


	@Column(name="Restaurant_NAME")
	private String restaurantname;
	@Column(name="Restaurant_DES")
	private String restaurantdes;
	@Column(name="Restaurant_TYPE")
	private String restauranttype;
	@Column(name="Restaurant_Price")
	private Integer restaurantprice;
	@Column(name="Restaurant_ADDRESS")
	private String restaurantaddress;
	@Column(name="Restaurant_PHONE")
	private String restaurantphone;
	@Column(name="Restaurant_SEAT")
	private Integer restaurantseat;
	@Override
	public String toString() {
		return "Restaurant [restaurantid=" + restaurantid + ", restaurantname=" + restaurantname + ", restaurantdes="
				+ restaurantdes + ", restauranttype=" + restauranttype + ", restaurantprice=" + restaurantprice
				+ ", restaurantaddress=" + restaurantaddress + ", restaurantphone=" + restaurantphone
				+ ", restaurantseat=" + restaurantseat + ", image=" + image + "]";
	}

	@Column(name="image")
	private Blob image;
	
	
	public Restaurant(Integer restaurantid, String restaurantname, String restaurantdes, String restauranttype,
			Integer restaurantprice, String restaurantaddress, String restaurantphone, Integer restaurantseat,
			Blob image) {
		super();
		this.restaurantid = restaurantid;
		this.restaurantname = restaurantname;
		this.restaurantdes = restaurantdes;
		this.restauranttype = restauranttype;
		this.restaurantprice = restaurantprice;
		this.restaurantaddress = restaurantaddress;
		this.restaurantphone = restaurantphone;
		this.restaurantseat = restaurantseat;
		this.image = image;
	}
	
	public Restaurant(Integer restaurantid, String restaurantname, String restaurantdes, String restauranttype,
			Integer restaurantprice, String restaurantaddress, String restaurantphone, 
			Blob image) {
		super();
		this.restaurantid = restaurantid;
		this.restaurantname = restaurantname;
		this.restaurantdes = restaurantdes;
		this.restauranttype = restauranttype;
		this.restaurantprice = restaurantprice;
		this.restaurantaddress = restaurantaddress;
		this.restaurantphone = restaurantphone;
		
		this.image = image;
	}
	
	
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	public Restaurant() {
		// TODO Auto-generated constructor stub
	}
	public Restaurant(String restaurantname, String restaurantdes, String restauranttype,
			Integer restaurantprice, String restaurantaddress, String restaurantphone, Integer restaurantseat,Blob image) {
		this.restaurantname = restaurantname;
		this.restaurantdes = restaurantdes;
		this.restauranttype = restauranttype;
		this.restaurantprice = restaurantprice;
		this.restaurantaddress = restaurantaddress;
		this.restaurantphone = restaurantphone;
		this.restaurantseat = restaurantseat;
		this.image = image;
	}
	
	public Restaurant(String restaurantname, String restaurantdes, String restauranttype,
			Integer restaurantprice, String restaurantaddress, String restaurantphone, Blob image) {
		this.restaurantname = restaurantname;
		this.restaurantdes = restaurantdes;
		this.restauranttype = restauranttype;
		this.restaurantprice = restaurantprice;
		this.restaurantaddress = restaurantaddress;
		this.restaurantphone = restaurantphone;
		
		this.image = image;
	}
	
	
	public Restaurant(Integer restaurantid, String restaurantname, String restaurantdes, String restauranttype,
			Integer restaurantprice, String restaurantaddress, String restaurantphone, Integer restaurantseat) {
		super();
		this.restaurantid = restaurantid;
		this.restaurantname = restaurantname;
		this.restaurantdes = restaurantdes;
		this.restauranttype = restauranttype;
		this.restaurantprice = restaurantprice;
		this.restaurantaddress = restaurantaddress;
		this.restaurantphone = restaurantphone;
		this.restaurantseat = restaurantseat;
	}


	public Integer getRestaurantid() {
		return restaurantid;
	}

	public void setRestaurantid(Integer restaurantid) {
		this.restaurantid = restaurantid;
	}

	public String getRestaurantname() {
		return restaurantname;
	}

	public void setRestaurantname(String restaurantname) {
		this.restaurantname = restaurantname;
	}

	public String getRestaurantdes() {
		return restaurantdes;
	}

	public void setRestaurantdes(String restaurantdes) {
		this.restaurantdes = restaurantdes;
	}

	public String getRestauranttype() {
		return restauranttype;
	}

	public void setRestauranttype(String restauranttype) {
		this.restauranttype = restauranttype;
	}

	public Integer getRestaurantprice() {
		return restaurantprice;
	}

	public void setRestaurantprice(Integer restaurantprice) {
		this.restaurantprice = restaurantprice;
	}

	public String getRestaurantaddress() {
		return restaurantaddress;
	}

	public void setRestaurantaddress(String restaurantaddress) {
		this.restaurantaddress = restaurantaddress;
	}

	public String getRestaurantphone() {
		return restaurantphone;
	}

	public void setRestaurantphone(String restaurantphone) {
		this.restaurantphone = restaurantphone;
	}

	public Integer getRestaurantseat() {
		return restaurantseat;
	}

	public void setRestaurantseat(Integer restaurantseat) {
		this.restaurantseat = restaurantseat;
	}


	

}
