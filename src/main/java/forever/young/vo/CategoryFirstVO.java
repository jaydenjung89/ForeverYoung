package forever.young.vo;

import java.util.List;

public class CategoryFirstVO {
	private String category_first_serial;
	private String category_first_name;
	private List<CategorySecondVO> data;
	
	public List<CategorySecondVO> getData() {
		return data;
	}
	public void setData(List<CategorySecondVO> data) {
		this.data = data;
	}
	public String getCategory_first_serial() {
		return category_first_serial;
	}
	public void setCategory_first_serial(String category_first_serial) {
		this.category_first_serial = category_first_serial;
	}
	public String getCategory_first_name() {
		return category_first_name;
	}
	public void setCategory_first_name(String category_first_name) {
		this.category_first_name = category_first_name;
	}
	@Override
	public String toString() {
		return "CategoryFirstVO [category_first_serial=" + category_first_serial + ", category_first_name="
				+ category_first_name + "]";
	}
	
}
