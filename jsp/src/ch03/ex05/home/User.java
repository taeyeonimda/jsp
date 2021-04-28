package ch03.ex05.home;

public class User {
	private String userName;
	private String passWord;
	
	public User(String userName, String passWord) {
		this.userName=userName;
		this.passWord=passWord;
	}

	public String toString() {
		return userName+"님 환영합니다";
	}
}
