package forever.young.vo;

import com.fasterxml.jackson.annotation.JsonInclude;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class CategorySecondVO {
	private String category_second_serial;
	private String category_second_name;
	private String category_second_no;
	private String category_first_serial;
	
	
	
	
	public String getCategory_first_serial() {
		return category_first_serial;
	}
	public void setCategory_first_serial(String category_first_serial) {
		this.category_first_serial = category_first_serial;
	}
	public String getCategory_second_no() {
		return category_second_no;
	}
	public void setCategory_second_no(String category_second_no) {
		this.category_second_no = category_second_no;
	}
	public String getCategory_second_serial() {
		return category_second_serial;
	}
	public void setCategory_second_serial(String category_second_serial) {
		this.category_second_serial = category_second_serial;
	}
	public String getCategory_second_name() {
		return category_second_name;
	}
	public void setCategory_second_name(String category_second_name) {
		this.category_second_name = category_second_name;
	}
	@Override
	public String toString() {
		return "CategorySecondVO [category_second_serial=" + category_second_serial + ", category_second_name="
				+ category_second_name + "]";
	}
	
}
