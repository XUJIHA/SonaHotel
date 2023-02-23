package tw.hotel.coupon.model;

import java.util.Date;

public class CouponUser {
	
	private int userId;
	private String userName;
	private Date userBirthday;
	private String userEmail;
	private String daysFromRegist;
	private int userRestOrderTotal;
	private int userRoomOrderTotal;
	private int userGiftOrderTotal;
	private int totalSpend;
	
	public CouponUser() {
	}
	
	public CouponUser(int userId, String userName, Date userBirthday, String userEmail, String daysFromRegist,
			int userRestOrderTotal, int userRoomOrderTotal, int userGiftOrderTotal) {
		this.userId = userId;
		this.userName = userName;
		this.userBirthday = userBirthday;
		this.userEmail = userEmail;
		this.daysFromRegist = daysFromRegist;
		this.userRestOrderTotal = userRestOrderTotal;
		this.userRoomOrderTotal = userRoomOrderTotal;
		this.userGiftOrderTotal = userGiftOrderTotal;
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
	public Date getUserBirthday() {
		return userBirthday;
	}
	public void setUserBirthday(Date userBirthday) {
		this.userBirthday = userBirthday;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getDaysFromRegist() {
		return daysFromRegist;
	}
	public void setDaysFromRegist(String daysFromRegist) {
		this.daysFromRegist = daysFromRegist;
	}
	public int getUserRestOrderTotal() {
		return userRestOrderTotal;
	}
	public void setUserRestOrderTotal(int userRestOrderTotal) {
		this.userRestOrderTotal = userRestOrderTotal;
	}
	public int getUserRoomOrderTotal() {
		return userRoomOrderTotal;
	}
	public void setUserRoomOrderTotal(int userRoomOrderTotal) {
		this.userRoomOrderTotal = userRoomOrderTotal;
	}
	public int getUserGiftOrderTotal() {
		return userGiftOrderTotal;
	}
	public void setUserGiftOrderTotal(int userGiftOrderTotal) {
		this.userGiftOrderTotal = userGiftOrderTotal;
	}
	
	public int getTotalSpend() {
		return userRoomOrderTotal + userGiftOrderTotal + userRestOrderTotal;
	}

	public void setTotalSpend(int totalSpend) {
		this.totalSpend = totalSpend;
	}

	@Override
	public String toString() {
		return "CouponUser [userId=" + userId + ", userName=" + userName + ", userBirthday=" + userBirthday
				+ ", userEmail=" + userEmail + ", daysFromRegist=" + daysFromRegist + ", userRestOrderTotal="
				+ userRestOrderTotal + ", userRoomOrderTotal=" + userRoomOrderTotal + ", userGiftOrderTotal="
				+ userGiftOrderTotal + ", totalSpend=" + totalSpend + "]";
	}
	
}
