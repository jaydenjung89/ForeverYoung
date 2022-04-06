package forever.young.admin.vo;


public class AdminUserVO {
	private int rownum;
	private int user_serial;
	private String user_id;
	private String user_name;
	private String user_phone;
	private String user_email;
	
	private String user_membership_name;
	public String getUser_membership_name() {
		return user_membership_name;
	}
	public void setUser_membership_name(String user_membership_name) {
		this.user_membership_name = user_membership_name;
	}
	private String user_last_login;
	private String user_point;
	private int user_total_purchase;
	private int user_status;
	
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public int getUser_serial() {
		return user_serial;
	}
	public void setUser_serial(int user_serial) {
		this.user_serial = user_serial;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_last_login() {
		return user_last_login;
	}
	public void setUser_last_login(String user_last_login) {
		this.user_last_login = user_last_login;
	}
	public String getUser_point() {
		return user_point;
	}
	public void setUser_point(String user_point) {
		this.user_point = user_point;
	}
	public int getUser_total_purchase() {
		return user_total_purchase;
	}
	public void setUser_total_purchase(int user_total_purchase) {
		this.user_total_purchase = user_total_purchase;
	}
	public int getUser_status() {
		return user_status;
	}
	public void setUser_status(int user_status) {
		this.user_status = user_status;
	}
	@Override
	public String toString() {
		return "AdminUserVO [rownum=" + rownum + ", user_serial=" + user_serial + ", user_id=" + user_id
				+ ", user_name=" + user_name + ", user_phone=" + user_phone + ", user_membership_name="
				+ user_membership_name + ", user_last_login=" + user_last_login + ", user_point=" + user_point
				+ ", user_total_purchase=" + user_total_purchase + ", user_status=" + user_status + "]";
	}
	
}
