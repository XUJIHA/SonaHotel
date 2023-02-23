package tw.hotel.gift.model;

import java.io.IOException;
import java.io.Serializable;
import java.sql.Blob;
import java.sql.SQLException;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity @Table(name="souvenir")
@Component
public class souvenirBean implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "SID")
	private Integer sid;
	@Column(name = "SNO")
	private String sno;
	@Column(name = "SNAME")
	private String sname;
	@Column(name = "SPIC")
	private Blob spic;
	@Column(name = "FILENAME")
	private String filename;
	@Column(name = "SDES")
	private String sdes;
	@Column(name = "SPRICE")
	private double sprice;
	@Column(name = "SNUM")
	private String snum;
	
	
	public souvenirBean() {
		
	}
	public souvenirBean(Integer sid, String sno, String sname, Blob spic, String filename, String sdes, double sprice,
			String snum) {
		super();
		this.sid = sid;
		this.sno = sno;
		this.sname = sname;
		this.spic = spic;
		this.filename = filename;
		this.sdes = sdes;
		this.sprice = sprice;
		this.snum = snum;
	}
	public souvenirBean(String sno, String sname, Blob spic, String sdes, double sprice, String snum) {
		super();
		this.sno = sno;
		this.sname = sname;
		this.spic = spic;
		this.sdes = sdes;
		this.sprice = sprice;
		this.snum = snum;
	}
	public souvenirBean(Integer sid, String sno, String sname, Blob spic, String sdes, double sprice, String snum) {
		super();
		this.sid = sid;
		this.sno = sno;
		this.sname = sname;
		this.spic = spic;
		this.sdes = sdes;
		this.sprice = sprice;
		this.snum = snum;
	}
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public Blob getSpic() {
		return spic;
	}
//	public void setSpic(Blob spic) {
//		this.spic = spic;
//	}
	public void setSpic(MultipartFile spic) throws IOException, SerialException, SQLException {
		byte[] bytes = spic.getBytes();
		Blob Imgblob = bytesToBlob(bytes);
		this.spic = Imgblob;
	}
	private Blob bytesToBlob(byte[] bytes) throws SerialException, SQLException {
		return new SerialBlob(bytes);
	}

	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getSdes() {
		return sdes;
	}
	public void setSdes(String sdes) {
		this.sdes = sdes;
	}
	public double getSprice() {
		return sprice;
	}
	public void setSprice(double sprice) {
		this.sprice = sprice;
	}
	public String getSnum() {
		return snum;
	}
	public void setSnum(String snum) {
		this.snum = snum;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("souvenirBean [sid=");
		builder.append(sid);
		builder.append(", sno=");
		builder.append(sno);
		builder.append(", sname=");
		builder.append(sname);
//		builder.append(", spic=");
//		builder.append(spic);
//		builder.append(", filename=");
//		builder.append(filename);
		builder.append(", sdes=");
		builder.append(sdes);
		builder.append(", sprice=");
		builder.append(sprice);
		builder.append(", snum=");
		builder.append(snum);
		builder.append("]");
		return builder.toString();
	}
	
	
	
	
	
	
}

