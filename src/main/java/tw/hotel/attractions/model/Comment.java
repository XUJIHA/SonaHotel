package tw.hotel.attractions.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity @Table(name = "COMMENT")
@Component
public class Comment {
	@Id @Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "CONTENT")
	private String content;
	 
	@Column(name = "STAR")
	private int star;
	
	@Column(name = "PAGEID")
	private int pageId;

	@Column(name = "USERID")
	private int userId;
	
	@Column(name = "USERNAME")
	private String userName;
	
	public Comment() {
	}
	
	public Comment(int id, String content, int star, int pageId, int userId, String userName) {
		this.id = id;
		this.content = content;
		this.star = star;
		this.pageId = pageId;
		this.userId = userId;
		this.userName = userName;
	}

	public Comment(String content, int star, int pageId, int userId, String userName) {
		super();
		this.content = content;
		this.star = star;
		this.pageId = pageId;
		this.userId = userId;
		this.userName = userName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Comment [id=").append(id).append(", content=").append(content).append(", star=").append(star)
				.append(", pageId=").append(pageId).append(", userId=").append(userId).append(", userName=")
				.append(userName).append("]");
		return builder.toString();
	}

}
