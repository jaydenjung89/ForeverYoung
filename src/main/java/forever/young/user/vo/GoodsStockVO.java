package forever.young.user.vo;

import java.util.Date;

public class GoodsStockVO {
	private int goods_stock_serial;
	private int category_goods_serial;
	private Date goods_stock_receiving_date;
	private int goods_stock_receiving_quantity;
	private int goods_stock_stock_quantity;
	private Date goods_stock_exp_date;
	public int getGoods_stock_serial() {
		return goods_stock_serial;
	}
	public void setGoods_stock_serial(int goods_stock_serial) {
		this.goods_stock_serial = goods_stock_serial;
	}
	public int getCategory_goods_serial() {
		return category_goods_serial;
	}
	public void setCategory_goods_serial(int category_goods_serial) {
		this.category_goods_serial = category_goods_serial;
	}
	public Date getGoods_stock_receiving_date() {
		return goods_stock_receiving_date;
	}
	public void setGoods_stock_receiving_date(Date goods_stock_receiving_date) {
		this.goods_stock_receiving_date = goods_stock_receiving_date;
	}
	public int getGoods_stock_receiving_quantity() {
		return goods_stock_receiving_quantity;
	}
	public void setGoods_stock_receiving_quantity(int goods_stock_receiving_quantity) {
		this.goods_stock_receiving_quantity = goods_stock_receiving_quantity;
	}
	public int getGoods_stock_stock_quantity() {
		return goods_stock_stock_quantity;
	}
	public void setGoods_stock_stock_quantity(int goods_stock_stock_quantity) {
		this.goods_stock_stock_quantity = goods_stock_stock_quantity;
	}
	public Date getGoods_stock_exp_date() {
		return goods_stock_exp_date;
	}
	public void setGoods_stock_exp_date(Date goods_stock_exp_date) {
		this.goods_stock_exp_date = goods_stock_exp_date;
	}
	@Override
	public String toString() {
		return "GoodsStockVO [goods_stock_serial=" + goods_stock_serial + ", category_goods_serial="
				+ category_goods_serial + ", goods_stock_receiving_date=" + goods_stock_receiving_date
				+ ", goods_stock_receiving_quantity=" + goods_stock_receiving_quantity + ", goods_stock_stock_quantity="
				+ goods_stock_stock_quantity + ", goods_stock_exp_date=" + goods_stock_exp_date + "]";
	}
	
}
