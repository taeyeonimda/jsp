package ch06.ex06;

import java.util.Date;

public class User {
	private int userNo;
	private String userName;
	private Date regDate;

	public User(int userNo, String userName, Date regDate) {
		this.userName = userName;
		this.userNo = userNo;
		this.regDate = regDate;
	}

	public int getUserNo() {
		return userNo;
	}

	public String getUserName() {
		return userName;
	}

	public Date getRegDate() {
		return regDate;
	}
	public String toString() {
		return userNo+userName+regDate;
	}
}
