package forever.young.user.vo;

import java.util.Date;

public class UserDetailVO {
	private int user_serial;
	private String user_id;
	private String user_membership_name;
	private Date user_last_login;
	private int user_point;
	private int user_status;
	private int user_total_purchase;
	
	private String pointRate;
	private String couponCount;
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
	public String getUser_membership_name() {
		return user_membership_name;
	}
	public void setUser_membership_name(String user_membership_name) {
		this.user_membership_name = user_membership_name;
	}
	public Date getUser_last_login() {
		return user_last_login;
	}
	public void setUser_last_login(Date user_last_login) {
		this.user_last_login = user_last_login;
	}
	public int getUser_point() {
		return user_point;
	}
	public void setUser_point(int user_point) {
		this.user_point = user_point;
	}
	public int getUser_status() {
		return user_status;
	}
	public void setUser_status(int user_status) {
		this.user_status = user_status;
	}
	public int getUser_total_purchase() {
		return user_total_purchase;
	}
	public void setUser_total_purchase(int user_total_purchase) {
		this.user_total_purchase = user_total_purchase;
	}
	public String getPointRate() {
		return pointRate;
	}
	public void setPointRate(String pointRate) {
		this.pointRate = pointRate;
	}
	public String getCouponCount() {
		return couponCount;
	}
	public void setCouponCount(String couponCount) {
		this.couponCount = couponCount;
	}
	@Override
	public String toString() {
		return "UserDetailVO [user_serial=" + user_serial + ", user_id=" + user_id + ", user_membership_name="
				+ user_membership_name + ", user_last_login=" + user_last_login + ", user_point=" + user_point
				+ ", user_status=" + user_status + ", user_total_purchase=" + user_total_purchase + ", pointRate="
				+ pointRate + ", couponCount=" + couponCount + "]";
	}
	
}
