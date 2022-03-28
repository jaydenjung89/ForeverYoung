package forever.young.vo;

import java.util.Date;

public class OrderVO {
	private int order_serial;
	private Date order_date;
	private String user_id;
	private String user_name;
	private String user_email;
	private String user_phone;
	private String user_address1;
	private String user_address2;
	private String user_zipcode;
	private int order_goods_count;
	private int order_goods_price;
	private int order_coupon_serial;
	private String order_delivery_status;
	private String order_merchant_serial;
	private int master_goods_serial;
	private int order_point;
	private int goods_detail_discountrate;
	
	private int order_detail_serial;
	private int category_goods_serial;
	private int order_goods_old_price;
	
	private int user_point;
	
	private int goods_count;
	private int goods_price;
	
	public int getGoods_detail_discountrate() {
		return goods_detail_discountrate;
	}
	public void setGoods_detail_discountrate(int goods_detail_discountrate) {
		this.goods_detail_discountrate = goods_detail_discountrate;
	}
	public int getOrder_serial() {
		return order_serial;
	}
	public void setOrder_serial(int order_serial) {
		this.order_serial = order_serial;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
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
	public int getOrder_goods_count() {
		return order_goods_count;
	}
	public void setOrder_goods_count(int order_goods_count) {
		this.order_goods_count = order_goods_count;
	}
	public int getOrder_goods_price() {
		return order_goods_price;
	}
	public void setOrder_goods_price(int order_goods_price) {
		this.order_goods_price = order_goods_price;
	}
	public int getOrder_coupon_serial() {
		return order_coupon_serial;
	}
	public void setOrder_coupon_serial(int order_coupon_serial) {
		this.order_coupon_serial = order_coupon_serial;
	}
	public String getOrder_delivery_status() {
		return order_delivery_status;
	}
	public void setOrder_delivery_status(String order_delivery_status) {
		this.order_delivery_status = order_delivery_status;
	}
	public String getOrder_merchant_serial() {
		return order_merchant_serial;
	}
	public void setOrder_merchant_serial(String order_merchant_serial) {
		this.order_merchant_serial = order_merchant_serial;
	}
	public int getMaster_goods_serial() {
		return master_goods_serial;
	}
	public void setMaster_goods_serial(int master_goods_serial) {
		this.master_goods_serial = master_goods_serial;
	}
	public int getOrder_point() {
		return order_point;
	}
	public void setOrder_point(int order_point) {
		this.order_point = order_point;
	}
	public int getOrder_detail_serial() {
		return order_detail_serial;
	}
	public void setOrder_detail_serial(int order_detail_serial) {
		this.order_detail_serial = order_detail_serial;
	}
	public int getCategory_goods_serial() {
		return category_goods_serial;
	}
	public void setCategory_goods_serial(int category_goods_serial) {
		this.category_goods_serial = category_goods_serial;
	}
	public int getOrder_goods_old_price() {
		return order_goods_old_price;
	}
	public void setOrder_goods_old_price(int order_goods_old_price) {
		this.order_goods_old_price = order_goods_old_price;
	}
	public int getUser_point() {
		return user_point;
	}
	public void setUser_point(int user_point) {
		this.user_point = user_point;
	}
	public int getGoods_count() {
		return goods_count;
	}
	public void setGoods_count(int goods_count) {
		this.goods_count = goods_count;
	}
	public int getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}
	@Override
	public String toString() {
		return "OrderVO [order_serial=" + order_serial + ", order_date=" + order_date + ", user_id=" + user_id
				+ ", user_name=" + user_name + ", user_email=" + user_email + ", user_phone=" + user_phone
				+ ", user_address1=" + user_address1 + ", user_address2=" + user_address2 + ", user_zipcode="
				+ user_zipcode + ", order_goods_count=" + order_goods_count + ", order_goods_price=" + order_goods_price
				+ ", order_coupon_serial=" + order_coupon_serial + ", order_delivery_status=" + order_delivery_status
				+ ", order_merchant_serial=" + order_merchant_serial + ", master_goods_serial=" + master_goods_serial
				+ ", order_point=" + order_point + ", order_detail_serial=" + order_detail_serial
				+ ", category_goods_serial=" + category_goods_serial + ", order_goods_old_price="
				+ order_goods_old_price + ", user_point=" + user_point + ", goods_count=" + goods_count
				+ ", goods_price=" + goods_price + "]";
	}
	
}
