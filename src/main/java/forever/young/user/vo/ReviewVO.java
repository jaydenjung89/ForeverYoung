package forever.young.user.vo;

import java.util.Date;

public class ReviewVO {
	private Integer review_serial;
	private String user_id;
	private String review_title;
	private String review_content;
	private Date review_date;
	private String review_image_main;
	private int review_hit;
	private boolean review_best_up;
	
	//카테고리 굿즈 테이블에서 가져오는 내용
	private Integer category_goods_serial;
	private String category_first_serial;
	private String category_second_serial;
	private String category_third_serial;
	private String category_goods_name;
	private String category_goods_brand;
	private int order_details_serial;
	private String category_goods_thum_img;
	private Date order_date;
	
	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	private int rnum;
	//페이징 처리
	private int start;
	private int end;

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public Integer getReview_serial() {
		return review_serial;
	}

	public void setReview_serial(Integer review_serial) {
		this.review_serial = review_serial;
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

	public Integer getCategory_goods_serial() {
		return category_goods_serial;
	}

	public void setCategory_goods_serial(Integer category_goods_serial) {
		this.category_goods_serial = category_goods_serial;
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

	public String getCategory_goods_name() {
		return category_goods_name;
	}

	public void setCategory_goods_name(String category_goods_name) {
		this.category_goods_name = category_goods_name;
	}

	public String getCategory_goods_brand() {
		return category_goods_brand;
	}

	public void setCategory_goods_brand(String category_goods_brand) {
		this.category_goods_brand = category_goods_brand;
	}

	public int getOrder_details_serial() {
		return order_details_serial;
	}

	public void setOrder_details_serial(int order_details_serial) {
		this.order_details_serial = order_details_serial;
	}

	public String getCategory_goods_thum_img() {
		return category_goods_thum_img;
	}

	public void setCategory_goods_thum_img(String category_goods_thum_img) {
		this.category_goods_thum_img = category_goods_thum_img;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	@Override
	public String toString() {
		return "ReviewVO [review_serial=" + review_serial + ", user_id=" + user_id + ", review_title=" + review_title
				+ ", review_content=" + review_content + ", review_date=" + review_date + ", review_image_main="
				+ review_image_main + ", review_hit=" + review_hit + ", review_best_up=" + review_best_up
				+ ", category_goods_serial=" + category_goods_serial + ", category_first_serial="
				+ category_first_serial + ", category_second_serial=" + category_second_serial
				+ ", category_third_serial=" + category_third_serial + ", category_goods_name=" + category_goods_name
				+ ", category_goods_brand=" + category_goods_brand + ", order_details_serial=" + order_details_serial
				+ ", category_goods_thum_img=" + category_goods_thum_img + ", rnum=" + rnum + "]";
	}

	
	
}
