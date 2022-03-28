package forever.young.user.vo;

public class MembershipVO {
	private String user_membership_name;
	private int user_membership_point_rate;
	private int user_membership_performance;
	public String getUser_membership_name() {
		return user_membership_name;
	}
	public void setUser_membership_name(String user_membership_name) {
		this.user_membership_name = user_membership_name;
	}
	public int getUser_membership_point_rate() {
		return user_membership_point_rate;
	}
	public void setUser_membership_point_rate(int user_membership_point_rate) {
		this.user_membership_point_rate = user_membership_point_rate;
	}
	public int getUser_membership_performance() {
		return user_membership_performance;
	}
	public void setUser_membership_performance(int user_membership_performance) {
		this.user_membership_performance = user_membership_performance;
	}
	@Override
	public String toString() {
		return "MembershipVO [user_membership_name=" + user_membership_name + ", user_membership_point_rate="
				+ user_membership_point_rate + ", user_membership_performance=" + user_membership_performance + "]";
	}
	
}
