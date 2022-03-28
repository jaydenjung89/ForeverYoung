package forever.young.admin.vo;

import java.util.Date;

public class AdminReviewVO {
	private int review_serial;
	private String user_serial;
	private String user_id;
	private String review_title;
	private String review_content;
	private Date review_date;
	private String review_image_main;
	private int review_hit;
	private boolean review_best_up;
	private int category_goods_serial;
	private int order_details_serial;
	private String category_goods_name;
	
	public int getReview_serial() {
		return review_serial;
	}
	public void setReview_serial(int review_serial) {
		this.review_serial = review_serial;
	}
	public String getUser_serial() {
		return user_serial;
	}
	public void setUser_serial(String user_serial) {
		this.user_serial = user_serial;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public Date getReview_date() {
		return review_date;
	}
	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}
	public String getReview_image_main() {
		return review_image_main;
	}
	public void setReview_image_main(String review_image_main) {
		this.review_image_main = review_image_main;
	}
	public int getReview_hit() {
		return review_hit;
	}
	public void setReview_hit(int review_hit) {
		this.review_hit = review_hit;
	}
	public boolean isReview_best_up() {
		return review_best_up;
	}
	public void setReview_best_up(boolean review_best_up) {
		this.review_best_up = review_best_up;
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
	public String getCategory_goods_name() {
		return category_goods_name;
	}
	public void setCategory_goods_name(String category_goods_name) {
		this.category_goods_name = category_goods_name;
	}
	
	@Override
	public String toString() {
		return "AdminReviewVO [review_serial=" + review_serial + ", user_serial=" + user_serial + ", user_id=" + user_id
				+ ", review_title=" + review_title + ", review_content=" + review_content + ", review_date="
				+ review_date + ", review_image_main=" + review_image_main + ", review_hit=" + review_hit
				+ ", review_best_up=" + review_best_up + ", category_goods_serial=" + category_goods_serial
				+ ", order_details_serial=" + order_details_serial + ", category_goods_name=" + category_goods_name
				+ "]";
	}
}
