package forever.young.user.service;

import forever.young.user.vo.MembershipVO;

public interface MembershipService {
	MembershipVO getMembershipData(String user_membership_name);
	String getMembershipOfUser(String user_id);
}
