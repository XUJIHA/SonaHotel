package tw.hotel.attractions.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Component @Table(name = "COLLECT")
public class Collect {
	
	@Id @Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "LIKETF")
	private int liketf;
	
	@Column(name = "PAGEID")
	private int pageId;
	
	@Column(name = "USERID")
	private int userId;

	public Collect() {
	}

	public Collect(int id, int liketf, int pageId, int userId) {
		this.id = id;
		this.liketf = liketf;
		this.pageId = pageId;
		this.userId = userId;
	}

	public Collect(int liketf, int pageId, int userId) {
		this.liketf = liketf;
		this.pageId = pageId;
		this.userId = userId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getLiketf() {
		return liketf;
	}

	public void setLiketf(int liketf) {
		this.liketf = liketf;
	}

	public int getPageId() {
		return pageId;
	}

	public void setPageId(int pageId) {
		this.pageId = pageId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Collect [id=").append(id).append(", liketf=").append(liketf).append(", pageId=").append(pageId)
				.append(", userId=").append(userId).append("]");
		return builder.toString();
	}
	
}
