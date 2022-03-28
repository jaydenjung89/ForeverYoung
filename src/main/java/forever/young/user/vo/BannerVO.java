package forever.young.user.vo;

public class BannerVO {
	private int banner_serial;
	//배너 제목
	private String banner_title;
	
	//배너 내용
	private String banner_contents;
	
	//배너 추가설명
	private String banner_subcontents;
	
	//배너 이미지 파일 위치
	private String banner_filepath;

	public int getBanner_serial() {
		return banner_serial;
	}

	public void setBanner_serial(int banner_serial) {
		this.banner_serial = banner_serial;
	}

	public String getBanner_title() {
		return banner_title;
	}

	public void setBanner_title(String banner_title) {
		this.banner_title = banner_title;
	}

	public String getBanner_contents() {
		return banner_contents;
	}

	public void setBanner_contents(String banner_contents) {
		this.banner_contents = banner_contents;
	}

	public String getBanner_subcontents() {
		return banner_subcontents;
	}

	public void setBanner_subcontents(String banner_subcontents) {
		this.banner_subcontents = banner_subcontents;
	}

	public String getBanner_filepath() {
		return banner_filepath;
	}

	public void setBanner_filepath(String banner_filepath) {
		this.banner_filepath = banner_filepath;
	}

	@Override
	public String toString() {
		return "BannerVO [banner_serial=" + banner_serial + ", banner_title=" + banner_title + ", banner_contents="
				+ banner_contents + ", banner_subcontents=" + banner_subcontents + ", banner_filepath="
				+ banner_filepath + "]";
	}
}
