package tw.hotel.attractions.model;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity @Table(name = "itinerary")
@Component
public class Itinerary {
	
	@Id @Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "TITLE")
	private String title;
	
	@Column(name = "DAYS")
	private int days;
	
	@Column(name = "ATTRACTIONS")
	private String attractions;
	
	@Column(name = "ITYPE")
	private String itype;
	
	@Column(name = "INTRODUCTION")
	private String introduction;
	
	@Column(name = "IMAGE")
	private byte[] image;
	
	@Column(name = "IMAGENAME")
	private String imageName;

	public Itinerary() {
	}

	public Itinerary(int id, String title, int days, String attractions, String introduction, byte[] image,
			String imageName) {
		this.id = id;
		this.title = title;
		this.days = days;
		this.attractions = attractions;
		this.introduction = introduction;
		this.image = image;
		this.imageName = imageName;
	}

	public Itinerary(String title, int days, String attractions, String introduction, byte[] image, String imageName) {
		this.title = title;
		this.days = days;
		this.attractions = attractions;
		this.introduction = introduction;
		this.image = image;
		this.imageName = imageName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getDays() {
		return days;
	}

	public void setDays(int days) {
		this.days = days;
	}

	public String getAttractions() {
		return attractions;
	}

	public void setAttractions(String attractions) {
		this.attractions = attractions;
	}

	public String getItype() {
		return itype;
	}

	public void setItype(String itype) {
		this.itype = itype;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Itinerary [id=").append(id).append(", title=").append(title).append(", days=").append(days)
				.append(", attractions=").append(attractions).append(", itype=").append(itype).append(", introduction=")
				.append(introduction).append(", image=").append(Arrays.toString(image)).append(", imageName=")
				.append(imageName).append("]");
		return builder.toString();
	}
	
}
