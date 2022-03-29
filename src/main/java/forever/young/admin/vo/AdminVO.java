package forever.young.admin.vo;


public class AdminVO {
	private String rownum;
	private String admin_id;
	private String admin_pw;
	private String admin_name;
	private String admin_position;
	private String admin_email;
	private String admin_phone;
	private String admin_address1;
	private String admin_address2;
	public String getRownum() {
		return rownum;
	}
	public void setRownum(String rownum) {
		this.rownum = rownum;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_pw() {
		return admin_pw;
	}
	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_position() {
		return admin_position;
	}
	public void setAdmin_position(String admin_position) {
		this.admin_position = admin_position;
	}
	public String getAdmin_email() {
		return admin_email;
	}
	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}
	public String getAdmin_phone() {
		return admin_phone;
	}
	public void setAdmin_phone(String admin_phone) {
		this.admin_phone = admin_phone;
	}
	public String getAdmin_address1() {
		return admin_address1;
	}
	public void setAdmin_address1(String admin_address1) {
		this.admin_address1 = admin_address1;
	}
	public String getAdmin_address2() {
		return admin_address2;
	}
	public void setAdmin_address2(String admin_address2) {
		this.admin_address2 = admin_address2;
	}
	@Override
	public String toString() {
		return "AdminVO [rownum=" + rownum + ", admin_id=" + admin_id + ", admin_pw=" + admin_pw + ", admin_name="
				+ admin_name + ", admin_position=" + admin_position + ", admin_email=" + admin_email + ", admin_phone="
				+ admin_phone + ", admin_address1=" + admin_address1 + ", admin_address2=" + admin_address2 + "]";
	}
	
}
