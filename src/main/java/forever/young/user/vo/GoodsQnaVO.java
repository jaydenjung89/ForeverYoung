package forever.young.user.vo;

import java.util.Date;

public class GoodsQnaVO {
	private int qna_goods_serial;
	private String user_id;
	private String user_name;
	private String category_first_serial;
	private String category_second_serial;
	private String category_third_serial;
	int category_goods_serial;
	
	private String qna_goods_title;
	private String qna_goods_content;
	private Date qna_goods_date;
	private int qna_goods_answer_status;
	private boolean qna_goods_lock;
	private String qna_goods_answer;
	private Date qna_goods_answer_date;
	private String qna_goods_name;
	private String qna_goods_thum_img;

	private String category_goods_brand;
	private String category_goods_name;
	private String category_goods_thum_img;
	
	private int rnum;
	private int start=0;
	private int end;
	public int getQna_goods_serial() {
		return qna_goods_serial;
	}
	public void setQna_goods_serial(int qna_goods_serial) {
		this.qna_goods_serial = qna_goods_serial;
	}
	
	public String getCategory_goods_brand() {
		return category_goods_brand;
	}
	public void setCategory_goods_brand(String category_goods_brand) {
		this.category_goods_brand = category_goods_brand;
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
	public String getQna_goods_title() {
		return qna_goods_title;
	}
	public void setQna_goods_title(String qna_goods_title) {
		this.qna_goods_title = qna_goods_title;
	}
	public String getQna_goods_content() {
		return qna_goods_content;
	}
	public void setQna_goods_content(String qna_goods_content) {
		this.qna_goods_content = qna_goods_content;
	}
	public Date getQna_goods_date() {
		return qna_goods_date;
	}
	public void setQna_goods_date(Date qna_goods_date) {
		this.qna_goods_date = qna_goods_date;
	}
	public int getQna_goods_answer_status() {
		return qna_goods_answer_status;
	}
	public void setQna_goods_answer_status(int qna_goods_answer_status) {
		this.qna_goods_answer_status = qna_goods_answer_status;
	}
	public boolean isQna_goods_lock() {
		return qna_goods_lock;
	}
	public void setQna_goods_lock(boolean qna_goods_lock) {
		this.qna_goods_lock = qna_goods_lock;
	}
	public String getQna_goods_answer() {
		return qna_goods_answer;
	}
	public void setQna_goods_answer(String qna_goods_answer) {
		this.qna_goods_answer = qna_goods_answer;
	}
	public Date getQna_goods_answer_date() {
		return qna_goods_answer_date;
	}
	public void setQna_goods_answer_date(Date qna_goods_answer_date) {
		this.qna_goods_answer_date = qna_goods_answer_date;
	}
	public String getQna_goods_name() {
		return qna_goods_name;
	}
	public void setQna_goods_name(String qna_goods_name) {
		this.qna_goods_name = qna_goods_name;
	}
	public String getQna_goods_thum_img() {
		return qna_goods_thum_img;
	}
	public void setQna_goods_thum_img(String qna_goods_thum_img) {
		this.qna_goods_thum_img = qna_goods_thum_img;
	}
	public String getCategory_goods_name() {
		return category_goods_name;
	}
	public void setCategory_goods_name(String category_goods_name) {
		this.category_goods_name = category_goods_name;
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
	@Override
	public String toString() {
		return "GoodsQnaVO [qna_goods_serial=" + qna_goods_serial + ", user_id=" + user_id + ", user_name=" + user_name
				+ ", category_first_serial=" + category_first_serial + ", category_second_serial="
				+ category_second_serial + ", category_third_serial=" + category_third_serial
				+ ", category_goods_serial=" + category_goods_serial + ", qna_goods_title=" + qna_goods_title
				+ ", qna_goods_content=" + qna_goods_content + ", qna_goods_date=" + qna_goods_date
				+ ", qna_goods_answer_status=" + qna_goods_answer_status + ", qna_goods_lock=" + qna_goods_lock
				+ ", qna_goods_answer=" + qna_goods_answer + ", qna_goods_answer_date=" + qna_goods_answer_date
				+ ", qna_goods_name=" + qna_goods_name + ", qna_goods_thum_img=" + qna_goods_thum_img
				+ ", category_goods_brand=" + category_goods_brand + ", category_goods_name=" + category_goods_name
				+ ", category_goods_thum_img=" + category_goods_thum_img + ", rnum=" + rnum + ", start=" + start
				+ ", end=" + end + "]";
	}
	
	
}
