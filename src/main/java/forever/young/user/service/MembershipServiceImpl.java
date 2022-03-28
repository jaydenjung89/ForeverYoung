package forever.young.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forever.young.user.dao.MembershipDAO;
import forever.young.user.vo.MembershipVO;

@Service
public class MembershipServiceImpl implements MembershipService {
	@Autowired
	private MembershipDAO membershipDAO;
	
	@Override
	public MembershipVO getMembershipData(String user_membership_name) {
		return membershipDAO.getMembership(user_membership_name);
	}

	@Override
	public String getMembershipOfUser(String user_id) {
		return membershipDAO.getMembershipOfUser(user_id);
	}

}
