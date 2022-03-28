package forever.young.user.vo;

public class user_address_listVO {
	private int address_serial;
	private String user_address1;
	private String user_address2;
	private String user_zipcode;
	private String user_id;
	private String user_name;
	private String user_phone;
	private boolean address_default;
	
	public int getAddress_serial() {
		return address_serial;
	}
	public void setAddress_serial(int address_serial) {
		this.address_serial = address_serial;
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
	public boolean isAddress_default() {
		return address_default;
	}
	public void setAddress_default(boolean address_default) {
		this.address_default = address_default;
	}
	@Override
	public String toString() {
		return "user_address_listVO [address_serial=" + address_serial + ", user_address1=" + user_address1
				+ ", user_address2=" + user_address2 + ", user_zipcode=" + user_zipcode + ", user_id=" + user_id
				+ ", user_name=" + user_name + ", user_phone=" + user_phone + ", address_default=" + address_default
				+ "]";
	}
	
}
