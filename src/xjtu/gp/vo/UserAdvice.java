package xjtu.gp.vo;

public class UserAdvice {
	String username;
	String email;
	String phone;
	String title;
	String msg;
	
	public UserAdvice(String username, String email, String phone, String title, String msg) {
		super();
		this.username = username;
		this.email = email;
		this.phone = phone;
		this.title = title;
		this.msg = msg;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	@Override
	public String toString() {
		return "UserAdvice [username=" + username + ", email=" + email + ", phone=" + phone + ", title=" + title
				+ ", msg=" + msg + "]";
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
