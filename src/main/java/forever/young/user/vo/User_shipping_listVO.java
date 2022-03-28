package forever.young.user.vo;

public class User_shipping_listVO {
	private int user_shipping_serial;
	private String user_id;
	private String user_shipping_place_name;
	private String user_shipping_name;
	private String user_shipping_phone;
	private String user_shipping_zipcode;
	private String user_shipping_address1;
	private String user_shipping_address2;
	private String user_shipping_detail_address;
	private boolean address_default;
	
	
	public boolean isAddress_default() {
		return address_default;
	}
	public void setAddress_default(boolean address_default) {
		this.address_default = address_default;
	}
	public int getUser_shipping_serial() {
		return user_shipping_serial;
	}
	public void setUser_shipping_serial(int user_shipping_serial) {
		this.user_shipping_serial = user_shipping_serial;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_shipping_place_name() {
		return user_shipping_place_name;
	}
	public void setUser_shipping_place_name(String user_shipping_place_name) {
		this.user_shipping_place_name = user_shipping_place_name;
	}
	public String getUser_shipping_name() {
		return user_shipping_name;
	}
	public void setUser_shipping_name(String user_shipping_name) {
		this.user_shipping_name = user_shipping_name;
	}
	public String getUser_shipping_phone() {
		return user_shipping_phone;
	}
	public void setUser_shipping_phone(String user_shipping_phone) {
		this.user_shipping_phone = user_shipping_phone;
	}
	public String getUser_shipping_zipcode() {
		return user_shipping_zipcode;
	}
	public void setUser_shipping_zipcode(String user_shipping_zipcode) {
		this.user_shipping_zipcode = user_shipping_zipcode;
	}
	public String getUser_shipping_address1() {
		return user_shipping_address1;
	}
	public void setUser_shipping_address1(String user_shipping_address1) {
		this.user_shipping_address1 = user_shipping_address1;
	}
	public String getUser_shipping_address2() {
		return user_shipping_address2;
	}
	public void setUser_shipping_address2(String user_shipping_address2) {
		this.user_shipping_address2 = user_shipping_address2;
	}
	public String getUser_shipping_detail_address() {
		return user_shipping_detail_address;
	}
	public void setUser_shipping_detail_address(String user_shipping_detail_address) {
		this.user_shipping_detail_address = user_shipping_detail_address;
	}
	@Override
	public String toString() {
		return "User_shipping_listVO [user_shipping_serial=" + user_shipping_serial + ", user_id=" + user_id
				+ ", user_shipping_place_name=" + user_shipping_place_name + ", user_shipping_name="
				+ user_shipping_name + ", user_shipping_phone=" + user_shipping_phone + ", user_shipping_zipcode="
				+ user_shipping_zipcode + ", user_shipping_address1=" + user_shipping_address1
				+ ", user_shipping_address2=" + user_shipping_address2 + ", user_shipping_detail_address="
				+ user_shipping_detail_address + ", address_default=" + address_default + "]";
	}
	
	
	
}
