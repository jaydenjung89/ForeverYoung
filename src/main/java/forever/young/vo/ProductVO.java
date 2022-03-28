package forever.young.vo;

import java.util.Date;

public class ProductVO {
	//category상품
	private String category_first_serial;
	private String category_second_serial;
	private String category_third_serial;
	private int category_goods_serial;
	private String category_goods_brand;
	private String category_goods_name;
	private String category_goods_delivery;
	private String category_goods_point;
	private int category_goods_count;
	private String category_goods_store;
	private String category_goods_detail;
	private String category_goods_info;
	private String category_goods_main_img;
	private String category_goods_thum_img;
	
	//goods detail
	private int goods_detail_serial;
	private int goods_detail_price;
	private int goods_detail_stock_quantity;
	private int goods_detail_promotion_serial;
	private int goods_detail_status;
	private int goods_detail_discountrate;
	
	//goods stock
	   private Date goods_stock_receiving_date;
	   private int goods_stock_serial;
	   private int goods_stock_stock_quantity;
	//cartVO
	private int goods_cart_count;
	
	//notDB
	private int goods_last_price;
	private boolean okStock;
	
	//정렬
	private String sort;
	
	
	public Date getGoods_stock_receiving_date() {
		return goods_stock_receiving_date;
	}

	public void setGoods_stock_receiving_date(Date goods_stock_receiving_date) {
		this.goods_stock_receiving_date = goods_stock_receiving_date;
	}

	public int getGoods_stock_serial() {
		return goods_stock_serial;
	}

	public void setGoods_stock_serial(int goods_stock_serial) {
		this.goods_stock_serial = goods_stock_serial;
	}

	public int getGoods_stock_stock_quantity() {
		return goods_stock_stock_quantity;
	}

	public void setGoods_stock_stock_quantity(int goods_stock_stock_quantity) {
		this.goods_stock_stock_quantity = goods_stock_stock_quantity;
	}

	public int getGoods_last_price() {
		return goods_last_price;
	}

	public void setGoods_last_price(int goods_last_price) {
		this.goods_last_price = goods_last_price;
	}

	public boolean isOkStock() {
		return okStock;
	}

	public void setOkStock(boolean okStock) {
		this.okStock = okStock;
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

	public int getCategory_goods_serial() {
		return category_goods_serial;
	}

	public void setCategory_goods_serial(int category_goods_serial) {
		this.category_goods_serial = category_goods_serial;
	}

	public String getCategory_goods_brand() {
		return category_goods_brand;
	}

	public void setCategory_goods_brand(String category_goods_brand) {
		this.category_goods_brand = category_goods_brand;
	}

	public String getCategory_goods_name() {
		return category_goods_name;
	}

	public void setCategory_goods_name(String category_goods_name) {
		this.category_goods_name = category_goods_name;
	}

	public String getCategory_goods_delivery() {
		return category_goods_delivery;
	}

	public void setCategory_goods_delivery(String category_goods_delivery) {
		this.category_goods_delivery = category_goods_delivery;
	}

	public String getCategory_goods_point() {
		return category_goods_point;
	}

	public void setCategory_goods_point(String category_goods_point) {
		this.category_goods_point = category_goods_point;
	}

	public int getCategory_goods_count() {
		return category_goods_count;
	}

	public void setCategory_goods_count(int category_goods_count) {
		this.category_goods_count = category_goods_count;
	}

	public String getCategory_goods_store() {
		return category_goods_store;
	}

	public void setCategory_goods_store(String category_goods_store) {
		this.category_goods_store = category_goods_store;
	}

	public String getCategory_goods_detail() {
		return category_goods_detail;
	}

	public void setCategory_goods_detail(String category_goods_detail) {
		this.category_goods_detail = category_goods_detail;
	}

	public String getCategory_goods_info() {
		return category_goods_info;
	}

	public void setCategory_goods_info(String category_goods_info) {
		this.category_goods_info = category_goods_info;
	}

	public String getCategory_goods_main_img() {
		return category_goods_main_img;
	}

	public void setCategory_goods_main_img(String category_goods_main_img) {
		this.category_goods_main_img = category_goods_main_img;
	}

	public String getCategory_goods_thum_img() {
		return category_goods_thum_img;
	}

	public void setCategory_goods_thum_img(String category_goods_thum_img) {
		this.category_goods_thum_img = category_goods_thum_img;
	}

	public int getGoods_detail_serial() {
		return goods_detail_serial;
	}

	public void setGoods_detail_serial(int goods_detail_serial) {
		this.goods_detail_serial = goods_detail_serial;
	}

	public int getGoods_detail_price() {
		return goods_detail_price;
	}

	public void setGoods_detail_price(int goods_detail_price) {
		this.goods_detail_price = goods_detail_price;
	}

	public int getGoods_detail_stock_quantity() {
		return goods_detail_stock_quantity;
	}

	public void setGoods_detail_stock_quantity(int goods_detail_stock_quantity) {
		this.goods_detail_stock_quantity = goods_detail_stock_quantity;
	}

	public int getGoods_detail_promotion_serial() {
		return goods_detail_promotion_serial;
	}

	public void setGoods_detail_promotion_serial(int goods_detail_promotion_serial) {
		this.goods_detail_promotion_serial = goods_detail_promotion_serial;
	}

	public int getGoods_detail_status() {
		return goods_detail_status;
	}

	public void setGoods_detail_status(int goods_detail_status) {
		this.goods_detail_status = goods_detail_status;
	}

	public int getGoods_detail_discountrate() {
		return goods_detail_discountrate;
	}

	public void setGoods_detail_discountrate(int goods_detail_discountrate) {
		this.goods_detail_discountrate = goods_detail_discountrate;
	}

	public int getGoods_cart_count() {
		return goods_cart_count;
	}

	public void setGoods_cart_count(int goods_cart_count) {
		this.goods_cart_count = goods_cart_count;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	@Override
	public String toString() {
		return "ProductVO [category_first_serial=" + category_first_serial + ", category_second_serial="
				+ category_second_serial + ", category_third_serial=" + category_third_serial
				+ ", category_goods_serial=" + category_goods_serial + ", category_goods_brand=" + category_goods_brand
				+ ", category_goods_name=" + category_goods_name + ", category_goods_delivery="
				+ category_goods_delivery + ", category_goods_point=" + category_goods_point + ", category_goods_count="
				+ category_goods_count + ", category_goods_store=" + category_goods_store + ", category_goods_detail="
				+ category_goods_detail + ", category_goods_info=" + category_goods_info + ", category_goods_main_img="
				+ category_goods_main_img + ", category_goods_thum_img=" + category_goods_thum_img
				+ ", goods_detail_serial=" + goods_detail_serial + ", goods_detail_price=" + goods_detail_price
				+ ", goods_detail_stock_quantity=" + goods_detail_stock_quantity + ", goods_detail_promotion_serial="
				+ goods_detail_promotion_serial + ", goods_detail_status=" + goods_detail_status
				+ ", goods_detail_discountrate=" + goods_detail_discountrate + ", goods_cart_count=" + goods_cart_count
				+ ", sort=" + sort + "]";
	}
	
}
