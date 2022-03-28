package forever.young.admin.vo;

import java.util.Date;

public class GoodsQnaVO {
	private int qna_goods_serial;
	private String user_id;
	private String user_name;
	private String category_first_serial;
	private String category_second_serial;
	private String category_third_serial;
	private String category_goods_serial;
	private String qna_goods_title;
	private String qna_goods_content;
	private Date qna_goods_date;
	private int qna_goods_answer_status;
	private String qna_goods_answer;
	private Date qna_goods_answer_date;
	private String category_goods_name;
	
	public int getQna_goods_serial() {
		return qna_goods_serial;
	}
	public void setQna_goods_serial(int qna_goods_serial) {
		this.qna_goods_serial = qna_goods_serial;
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
	public String getCategory_goods_serial() {
		return category_goods_serial;
	}
	public void setCategory_goods_serial(String category_goods_serial) {
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
	public String getCategory_goods_name() {
		return category_goods_name;
	}
	public void setCategory_goods_name(String category_goods_name) {
		this.category_goods_name = category_goods_name;
	}
	
	@Override
	public String toString() {
		return "GoodsQnaVO [qna_goods_serial=" + qna_goods_serial + ", user_id=" + user_id + ", user_name=" + user_name
				+ ", category_first_serial=" + category_first_serial + ", category_second_serial="
				+ category_second_serial + ", category_third_serial=" + category_third_serial
				+ ", category_goods_serial=" + category_goods_serial + ", qna_goods_title=" + qna_goods_title
				+ ", qna_goods_content=" + qna_goods_content + ", qna_goods_date=" + qna_goods_date
				+ ", qna_goods_answer_status=" + qna_goods_answer_status + ", qna_goods_answer=" + qna_goods_answer
				+ ", qna_goods_answer_date=" + qna_goods_answer_date + ", category_goods_name=" + category_goods_name
				+ "]";
	}
}
