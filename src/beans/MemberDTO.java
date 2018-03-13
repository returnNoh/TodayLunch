package beans;

public class MemberDTO {
	private String p_id;
	private String p_passwd;
	private String p_email;
	private String p_name;
	private int p_check;
	private String p_siknum;
	
	private String r_id;
	private String r_passwd;
	private String r_email;
	private String r_phone;
	
	public String getR_id() {
		return r_id;
	}
	public void setR_id(String r_id) {
		this.r_id = r_id;
	}
	public String getR_passwd() {
		return r_passwd;
	}
	public void setR_passwd(String r_passwd) {
		this.r_passwd = r_passwd;
	}
	public String getR_email() {
		return r_email;
	}
	public void setR_email(String r_email) {
		this.r_email = r_email;
	}
	public String getR_phone() {
		return r_phone;
	}
	public void setR_phone(String r_phone) {
		this.r_phone = r_phone;
	}
	
	
	public String getP_id() {
		return p_id;
	}
	public String getP_passwd() {
		return p_passwd;
	}
	public String getP_email() {
		return p_email;
	}
	public String getP_name() {
		return p_name;
	}
	public int getP_check() {
		return p_check;
	}
	public String getP_siknum() {
		return p_siknum;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public void setP_passwd(String p_passwd) {
		this.p_passwd = p_passwd;
	}
	public void setP_email(String p_email) {
		this.p_email = p_email;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public void setP_check(int p_check) {
		this.p_check = p_check;
	}
	public void setP_siknum(String p_siknum) {
		this.p_siknum = p_siknum;
	}
	
	
}
