package forever.young.admin.vo;




public class AdminFaqVO {
	private int faq_serial_num;
	private String faq_category;
	private String faq_title;
	private String faq_content;
	public int getFaq_serial_num() {
		return faq_serial_num;
	}
	public void setFaq_serial_num(int faq_serial_num) {
		this.faq_serial_num = faq_serial_num;
	}
	public String getFaq_category() {
		return faq_category;
	}
	public void setFaq_category(String faq_category) {
		this.faq_category = faq_category;
	}
	public String getFaq_title() {
		return faq_title;
	}
	public void setFaq_title(String faq_title) {
		this.faq_title = faq_title;
	}
	public String getFaq_content() {
		return faq_content;
	}
	public void setFaq_content(String faq_content) {
		this.faq_content = faq_content;
	}
	@Override
	public String toString() {
		return "AdminFaqVO [faq_serial_num=" + faq_serial_num + ", faq_category=" + faq_category + ", faq_title="
				+ faq_title + ", faq_content=" + faq_content + "]";
	}

}
