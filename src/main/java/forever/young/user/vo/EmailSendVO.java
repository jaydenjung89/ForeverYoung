package forever.young.user.vo;

public class EmailSendVO {
	private String email;
	private String password;
	private String iv;
	private String key;
	
	private String sendEmail;
	private String subject;
	private String content;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getIv() {
		return iv;
	}
	public void setIv(String iv) {
		this.iv = iv;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getSendEmail() {
		return sendEmail;
	}
	public void setSendEmail(String sendEmail) {
		this.sendEmail = sendEmail;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "EmailSendVO [email=" + email + ", password=" + password + ", iv=" + iv + ", key=" + key + ", sendEmail="
				+ sendEmail + ", subject=" + subject + ", content=" + content + "]";
	}
	

}
