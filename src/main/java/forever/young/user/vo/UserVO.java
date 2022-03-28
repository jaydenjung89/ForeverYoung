package forever.young.user.vo;

import java.sql.Date;

public class UserVO {
	private String user_id;
	private String user_password;
	private String user_name;
	private String user_email;
	private String user_phone;
	private String user_address1;
	private String user_address2;
	private String user_zipcode;
	private Boolean user_gender;
	private String user_birth;
	private Date user_join_date;
	
	private String user_new_pw;
	private String user_year;
	private String user_month;
	private String user_day;

	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_address1() {
		return user_address1;
	}
	public void setUser_address1(String user_address1) {
		this.user_address1 = user_address1;
	}
	public String getUser_address2() {
		return user_address2;
	}
	public void setUser_address2(String user_address2) {
		this.user_address2 = user_address2;
	}
	public String getUser_zipcode() {
		return user_zipcode;
	}
	public void setUser_zipcode(String user_zipcode) {
		this.user_zipcode = user_zipcode;
	}
	public Boolean getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(Boolean user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public Date getUser_join_date() {
		return user_join_date;
	}
	public void setUser_join_date(Date user_join_date) {
		this.user_join_date = user_join_date;
	}
	public String getUser_new_pw() {
		return user_new_pw;
	}
	public void setUser_new_pw(String user_new_pw) {
		this.user_new_pw = user_new_pw;
	}
	public String getUser_year() {
		return user_year;
	}
	public void setUser_year(String user_year) {
		this.user_year = user_year;
	}
	public String getUser_month() {
		return user_month;
	}
	public void setUser_month(String user_month) {
		this.user_month = user_month;
	}
	public String getUser_day() {
		return user_day;
	}
	public void setUser_day(String user_day) {
		this.user_day = user_day;
	}
	@Override
	public String toString() {
		return "UserVO [user_id=" + user_id + ", user_password=" + user_password + ", user_name=" + user_name
				+ ", user_email=" + user_email + ", user_phone=" + user_phone + ", user_address1=" + user_address1
				+ ", user_address2=" + user_address2 + ", user_zipcode=" + user_zipcode + ", user_gender=" + user_gender
				+ ", user_birth=" + user_birth + ", user_join_date=" + user_join_date + "]";
	}
	
	
	
	
}
