package virtualtravel;

public class TravelerBeanIL {
	private String username;
	private String pass;


	public TravelerBeanIL() {
	}
	public TravelerBeanIL(String username, String pass) {
		this.username = username;
		this.pass = pass;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}

}
