package tw.hotel.attractions.model;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity @Table(name = "attractions")
@Component
public class Attractions {
	
	@Id @Column(name = "AID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int aid;
	
	@Column(name = "ANAME")
	private String aname;
	
	@Column(name = "ADDRESS")
	private String address;
	
	@Column(name = "LNG")
	private String lng;
	
	@Column(name = "LAT")
	private String lat;
	
	@Column(name = "BEGIN7")
	private String begin7;
	
	@Column(name = "END7")
	private String end7;
	
	@Column(name = "BEGIN1")
	private String begin1;
	
	@Column(name = "END1")
	private String end1;
	
	@Column(name = "BEGIN2")
	private String begin2;
	
	@Column(name = "END2")
	private String end2;
	
	@Column(name = "BEGIN3")
	private String begin3;
	
	@Column(name = "END3")
	private String end3;
	
	@Column(name = "BEGIN4")
	private String begin4;
	
	@Column(name = "END4")
	private String end4;
	
	@Column(name = "BEGIN5")
	private String begin5;
	
	@Column(name = "END5")
	private String end5;
	
	@Column(name = "BEGIN6")
	private String begin6;
	
	@Column(name = "END6")
	private String end6;
	
	@Column(name = "INTRODUCTION")
	private String introduction;
	
	@Column(name = "PHONE")
	private String phone;
	
	@Column(name = "AIMAGE")
	private byte[] aimage;
	
	@Column(name = "IMAGENAME")
	private String imageName;

	public Attractions() {
	}

	public Attractions(int aid, String aname, String address, String lng, String lat, String begin7, String end7, String begin1, String end1,
			String begin2, String end2, String begin3, String end3, String begin4, String end4, String begin5,
			String end5, String begin6, String end6, String introduction, String phone, byte[] aimage,
			String imageName) {
		this.aid = aid;
		this.aname = aname;
		this.address = address;
		this.lng = lng;
		this.lat = lat;
		this.begin7 = begin7;
		this.end7 = end7;
		this.begin1 = begin1;
		this.end1 = end1;
		this.begin2 = begin2;
		this.end2 = end2;
		this.begin3 = begin3;
		this.end3 = end3;
		this.begin4 = begin4;
		this.end4 = end4;
		this.begin5 = begin5;
		this.end5 = end5;
		this.begin6 = begin6;
		this.end6 = end6;
		this.introduction = introduction;
		this.phone = phone;
		this.aimage = aimage;
		this.imageName = imageName;
	}

	public Attractions(String aname, String address, String lng, String lat, String begin7, String end7, String begin1, String end1,
			String begin2, String end2, String begin3, String end3, String begin4, String end4, String begin5,
			String end5, String begin6, String end6, String introduction, String phone, byte[] aimage,
			String imageName) {
		this.aname = aname;
		this.address = address;
		this.lng = lng;
		this.lat = lat;
		this.begin7 = begin7;
		this.end7 = end7;
		this.begin1 = begin1;
		this.end1 = end1;
		this.begin2 = begin2;
		this.end2 = end2;
		this.begin3 = begin3;
		this.end3 = end3;
		this.begin4 = begin4;
		this.end4 = end4;
		this.begin5 = begin5;
		this.end5 = end5;
		this.begin6 = begin6;
		this.end6 = end6;
		this.introduction = introduction;
		this.phone = phone;
		this.aimage = aimage;
		this.imageName = imageName;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLng() {
		return lng;
	}

	public void setLng(String lng) {
		this.lng = lng;
	}

	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

	public String getBegin7() {
		return begin7;
	}

	public void setBegin7(String begin7) {
		this.begin7 = begin7;
	}

	public String getEnd7() {
		return end7;
	}

	public void setEnd7(String end7) {
		this.end7 = end7;
	}

	public String getBegin1() {
		return begin1;
	}

	public void setBegin1(String begin1) {
		this.begin1 = begin1;
	}

	public String getEnd1() {
		return end1;
	}

	public void setEnd1(String end1) {
		this.end1 = end1;
	}

	public String getBegin2() {
		return begin2;
	}

	public void setBegin2(String begin2) {
		this.begin2 = begin2;
	}

	public String getEnd2() {
		return end2;
	}

	public void setEnd2(String end2) {
		this.end2 = end2;
	}

	public String getBegin3() {
		return begin3;
	}

	public void setBegin3(String begin3) {
		this.begin3 = begin3;
	}

	public String getEnd3() {
		return end3;
	}

	public void setEnd3(String end3) {
		this.end3 = end3;
	}

	public String getBegin4() {
		return begin4;
	}

	public void setBegin4(String begin4) {
		this.begin4 = begin4;
	}

	public String getEnd4() {
		return end4;
	}

	public void setEnd4(String end4) {
		this.end4 = end4;
	}

	public String getBegin5() {
		return begin5;
	}

	public void setBegin5(String begin5) {
		this.begin5 = begin5;
	}

	public String getEnd5() {
		return end5;
	}

	public void setEnd5(String end5) {
		this.end5 = end5;
	}

	public String getBegin6() {
		return begin6;
	}

	public void setBegin6(String begin6) {
		this.begin6 = begin6;
	}

	public String getEnd6() {
		return end6;
	}

	public void setEnd6(String end6) {
		this.end6 = end6;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public byte[] getAimage() {
		return aimage;
	}

	public void setAimage(byte[] aimage) {
		this.aimage = aimage;
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
		builder.append("Attractions [aid=").append(aid).append(", aname=").append(aname).append(", address=")
				.append(address).append(", lng=").append(lng).append(", lat=").append(lat).append(", begin7=")
				.append(begin7).append(", end7=").append(end7).append(", begin1=").append(begin1).append(", end1=")
				.append(end1).append(", begin2=").append(begin2).append(", end2=").append(end2).append(", begin3=")
				.append(begin3).append(", end3=").append(end3).append(", begin4=").append(begin4).append(", end4=")
				.append(end4).append(", begin5=").append(begin5).append(", end5=").append(end5).append(", begin6=")
				.append(begin6).append(", end6=").append(end6).append(", introduction=").append(introduction)
				.append(", phone=").append(phone).append(", aimage=").append(Arrays.toString(aimage))
				.append(", imageName=").append(imageName).append("]");
		return builder.toString();
	}

}
