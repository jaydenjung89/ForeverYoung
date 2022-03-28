package forever.young.user.vo;

public class CartVO {
	private int goods_cart_serial;
	private int category_goods_serial;
	private int goods_cart_count;
	private boolean goods_cart_status;
	private String user_id;
	public int getGoods_cart_serial() {
		return goods_cart_serial;
	}
	public void setGoods_cart_serial(int goods_cart_serial) {
		this.goods_cart_serial = goods_cart_serial;
	}
	public int getCategory_goods_serial() {
		return category_goods_serial;
	}
	public void setCategory_goods_serial(int category_goods_serial) {
		this.category_goods_serial = category_goods_serial;
	}
	public int getGoods_cart_count() {
		return goods_cart_count;
	}
	public void setGoods_cart_count(int goods_cart_count) {
		this.goods_cart_count = goods_cart_count;
	}
	public boolean isGoods_cart_status() {
		return goods_cart_status;
	}
	public void setGoods_cart_status(boolean goods_cart_status) {
		this.goods_cart_status = goods_cart_status;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "CartVO [goods_cart_serial=" + goods_cart_serial + ", category_goods_serial=" + category_goods_serial
				+ ", goods_cart_count=" + goods_cart_count + ", goods_cart_status=" + goods_cart_status + ", user_id="
				+ user_id + "]";
	}
	
}
