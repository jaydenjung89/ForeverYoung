package forever.young.user.vo;

public class ShippingVO {
	private int shipping_serial;
	private String shipping_address1;
	private String shipping_address2;
	private String shipping_zipcode;
	private String shipping_recipient_name;
	private String shipping_recipient_phone;
	private String shipping_pickup_type;
	private String shipping_pickup_detail;
	private String shipping_message_time;
	private String shipping_door_password;
	private String shipping_sender_name;
	private String shipping_sender_phone;
	private String order_merchant_serial;
	private String shipping_recipient_place;
	public int getShipping_serial() {
		return shipping_serial;
	}
	public void setShipping_serial(int shipping_serial) {
		this.shipping_serial = shipping_serial;
	}
	public String getShipping_address1() {
		return shipping_address1;
	}
	public void setShipping_address1(String shipping_address1) {
		this.shipping_address1 = shipping_address1;
	}
	public String getShipping_address2() {
		return shipping_address2;
	}
	public void setShipping_address2(String shipping_address2) {
		this.shipping_address2 = shipping_address2;
	}
	public String getShipping_zipcode() {
		return shipping_zipcode;
	}
	public void setShipping_zipcode(String shipping_zipcode) {
		this.shipping_zipcode = shipping_zipcode;
	}
	public String getShipping_recipient_name() {
		return shipping_recipient_name;
	}
	public void setShipping_recipient_name(String shipping_recipient_name) {
		this.shipping_recipient_name = shipping_recipient_name;
	}
	public String getShipping_recipient_phone() {
		return shipping_recipient_phone;
	}
	public void setShipping_recipient_phone(String shipping_recipient_phone) {
		this.shipping_recipient_phone = shipping_recipient_phone;
	}
	public String getShipping_pickup_type() {
		return shipping_pickup_type;
	}
	public void setShipping_pickup_type(String shipping_pickup_type) {
		this.shipping_pickup_type = shipping_pickup_type;
	}
	public String getShipping_pickup_detail() {
		return shipping_pickup_detail;
	}
	public void setShipping_pickup_detail(String shipping_pickup_detail) {
		this.shipping_pickup_detail = shipping_pickup_detail;
	}
	public String getShipping_message_time() {
		return shipping_message_time;
	}
	public void setShipping_message_time(String shipping_message_time) {
		this.shipping_message_time = shipping_message_time;
	}
	public String getShipping_door_password() {
		return shipping_door_password;
	}
	public void setShipping_door_password(String shipping_door_password) {
		this.shipping_door_password = shipping_door_password;
	}
	public String getShipping_sender_name() {
		return shipping_sender_name;
	}
	public void setShipping_sender_name(String shipping_sender_name) {
		this.shipping_sender_name = shipping_sender_name;
	}
	public String getShipping_sender_phone() {
		return shipping_sender_phone;
	}
	public void setShipping_sender_phone(String shipping_sender_phone) {
		this.shipping_sender_phone = shipping_sender_phone;
	}
	public String getOrder_merchant_serial() {
		return order_merchant_serial;
	}
	public void setOrder_merchant_serial(String order_merchant_serial) {
		this.order_merchant_serial = order_merchant_serial;
	}
	public String getShipping_recipient_place() {
		return shipping_recipient_place;
	}
	public void setShipping_recipient_place(String shipping_recipient_place) {
		this.shipping_recipient_place = shipping_recipient_place;
	}
	@Override
	public String toString() {
		return "ShippingVO [shipping_serial=" + shipping_serial + ", shipping_address1=" + shipping_address1
				+ ", shipping_address2=" + shipping_address2 + ", shipping_zipcode=" + shipping_zipcode
				+ ", shipping_recipient_name=" + shipping_recipient_name + ", shipping_recipient_phone="
				+ shipping_recipient_phone + ", shipping_pickup_type=" + shipping_pickup_type
				+ ", shipping_pickup_detail=" + shipping_pickup_detail + ", shipping_message_time="
				+ shipping_message_time + ", shipping_door_password=" + shipping_door_password
				+ ", shipping_sender_name=" + shipping_sender_name + ", shipping_sender_phone=" + shipping_sender_phone
				+ ", order_merchant_serial=" + order_merchant_serial + ", shipping_recipient_place="
				+ shipping_recipient_place + "]";
	}
	
	
}
