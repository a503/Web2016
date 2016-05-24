package first.login.user;

public class User {
	private String u_id;
	private String u_pw;
	private String u_name;
	
	
	public String getUserId() {
		return u_id;
	}
	public void setUserId(String u_id) {
		this.u_id = u_id;
	}
	public String u_pw() {
		return u_pw;
	}
	public void setPassword(String u_pw) {
		this.u_pw = u_pw;
	}
	public String getUserName() {
		return u_name;
	}
	public void setUserName(String u_name){
		this.u_name = u_name;
	}
}
