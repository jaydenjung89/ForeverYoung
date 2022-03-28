package forever.young.admin.vo;

import java.util.Date;

import lombok.Data;

@Data
public class AdminTermsVO {
	
	private int ROWNUM;
	private String TERMS_SERIAL;			//약관일련번호
	private String TERMS_TITLE;				//약관명
	private String TERMS_CONTENTS;			//약관내용
	private Date TERMS_DATE;				//약관등록일
	private boolean TERMS_MUST;				//약관필수 여부
	public int getROWNUM() {
		return ROWNUM;
	}
	public void setROWNUM(int rOWNUM) {
		ROWNUM = rOWNUM;
	}
	public String getTERMS_SERIAL() {
		return TERMS_SERIAL;
	}
	public void setTERMS_SERIAL(String tERMS_SERIAL) {
		TERMS_SERIAL = tERMS_SERIAL;
	}
	public String getTERMS_TITLE() {
		return TERMS_TITLE;
	}
	public void setTERMS_TITLE(String tERMS_TITLE) {
		TERMS_TITLE = tERMS_TITLE;
	}
	public String getTERMS_CONTENTS() {
		return TERMS_CONTENTS;
	}
	public void setTERMS_CONTENTS(String tERMS_CONTENTS) {
		TERMS_CONTENTS = tERMS_CONTENTS;
	}
	public Date getTERMS_DATE() {
		return TERMS_DATE;
	}
	public void setTERMS_DATE(Date tERMS_DATE) {
		TERMS_DATE = tERMS_DATE;
	}
	public boolean isTERMS_MUST() {
		return TERMS_MUST;
	}
	public void setTERMS_MUST(boolean tERMS_MUST) {
		TERMS_MUST = tERMS_MUST;
	}
	@Override
	public String toString() {
		return "AdminTermsVO [ROWNUM=" + ROWNUM + ", TERMS_SERIAL=" + TERMS_SERIAL + ", TERMS_TITLE=" + TERMS_TITLE
				+ ", TERMS_CONTENTS=" + TERMS_CONTENTS + ", TERMS_DATE=" + TERMS_DATE + ", TERMS_MUST=" + TERMS_MUST
				+ "]";
	}
	
//	private String user_id;					//약관동의 아이디
//	private boolean terms_agree_check;		//약관동의여부
//	private Date terms_agree_date;			//약관동의날짜
}
