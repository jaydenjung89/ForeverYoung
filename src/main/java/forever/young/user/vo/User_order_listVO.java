package forever.young.user.vo;

import java.util.Date;

public class User_order_listVO {
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
	private String category_goods_thum_img;
	private String category_goods_name;
	private String category_goods_brand;
	private Pagination pagination;
	private String category_goods_detail_name1;
	private String category_goods_detail_name2;
	private String goods_detail_price;
	private String order_goods_old_price;
	private int order_point;
	private String category_first_serial;
	private String category_second_serial;
	private String category_third_serial;
	private int category_goods_serial;
	private int order_details_serial;
	private int goods_detail_discountrate;

	
	
	
	public int getGoods_detail_discountrate() {
		return goods_detail_discountrate;
	}

	public void setGoods_detail_discountrate(int goods_detail_discountrate) {
		this.goods_detail_discountrate = goods_detail_discountrate;
	}

	public String getCategory_first_serial() {
		return category_first_serial;
	}

	public void setCategory_first_serial(String category_first_serial) {
		this.category_first_serial = category_first_serial;
	}

	public String getCategory_second_serial() {
		return category_second_serial;
	}

	public void setCategory_second_serial(String category_second_serial) {
		this.category_second_serial = category_second_serial;
	}

	public String getCategory_third_serial() {
		return category_third_serial;
	}

	public void setCategory_third_serial(String category_third_serial) {
		this.category_third_serial = category_third_serial;
	}

	public int getOrder_serial() {
		return order_serial;
	}

	public String getCategory_goods_brand() {
		return category_goods_brand;
	}

	public void setCategory_goods_brand(String category_goods_brand) {
		this.category_goods_brand = category_goods_brand;
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

	public String getCategory_goods_thum_img() {
		return category_goods_thum_img;
	}

	public void setCategory_goods_thum_img(String category_goods_thum_img) {
		this.category_goods_thum_img = category_goods_thum_img;
	}

	public String getCategory_goods_name() {
		return category_goods_name;
	}

	public void setCategory_goods_name(String category_goods_name) {
		this.category_goods_name = category_goods_name;
	}

	public Pagination getPagination() {
		return pagination;
	}

	public void setPagination(Pagination pagination) {
		this.pagination = pagination;
	}

	public String getCategory_goods_detail_name1() {
		return category_goods_detail_name1;
	}

	public void setCategory_goods_detail_name1(String category_goods_detail_name1) {
		this.category_goods_detail_name1 = category_goods_detail_name1;
	}

	public String getCategory_goods_detail_name2() {
		return category_goods_detail_name2;
	}

	public void setCategory_goods_detail_name2(String category_goods_detail_name2) {
		this.category_goods_detail_name2 = category_goods_detail_name2;
	}

	public String getGoods_detail_price() {
		return goods_detail_price;
	}

	public void setGoods_detail_price(String goods_detail_price) {
		this.goods_detail_price = goods_detail_price;
	}

	public String getOrder_goods_old_price() {
		return order_goods_old_price;
	}

	public void setOrder_goods_old_price(String order_goods_old_price) {
		this.order_goods_old_price = order_goods_old_price;
	}

	public int getOrder_point() {
		return order_point;
	}

	public void setOrder_point(int order_point) {
		this.order_point = order_point;
	}

	public int getCategory_goods_serial() {
		return category_goods_serial;
	}

	public void setCategory_goods_serial(int category_goods_serial) {
		this.category_goods_serial = category_goods_serial;
	}

	public int getOrder_details_serial() {
		return order_details_serial;
	}

	public void setOrder_details_serial(int order_details_serial) {
		this.order_details_serial = order_details_serial;
	}

	@Override
	public String toString() {
		return "User_order_listVO [order_serial=" + order_serial + ", order_date=" + order_date + ", user_id=" + user_id
				+ ", user_name=" + user_name + ", user_email=" + user_email + ", user_phone=" + user_phone
				+ ", user_address1=" + user_address1 + ", user_address2=" + user_address2 + ", user_zipcode="
				+ user_zipcode + ", order_goods_count=" + order_goods_count + ", order_goods_price=" + order_goods_price
				+ ", order_coupon_serial=" + order_coupon_serial + ", order_delivery_status=" + order_delivery_status
				+ ", order_merchant_serial=" + order_merchant_serial + ", master_goods_serial=" + master_goods_serial
				+ ", category_goods_thum_img=" + category_goods_thum_img + ", category_goods_name="
				+ category_goods_name + ", category_goods_brand=" + category_goods_brand + ", pagination=" + pagination
				+ ", category_goods_detail_name1=" + category_goods_detail_name1 + ", category_goods_detail_name2="
				+ category_goods_detail_name2 + ", goods_detail_price=" + goods_detail_price
				+ ", order_goods_old_price=" + order_goods_old_price + ", order_point=" + order_point
				+ ", category_first_serial=" + category_first_serial + ", category_second_serial="
				+ category_second_serial + ", category_third_serial=" + category_third_serial
				+ ", category_goods_serial=" + category_goods_serial + ", order_details_serial=" + order_details_serial
				+ "]";
	}

	

}
