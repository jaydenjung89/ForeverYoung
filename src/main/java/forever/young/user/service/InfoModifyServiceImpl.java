package forever.young.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.support.SessionStatus;

import forever.young.user.dao.UserDAO;
import forever.young.user.vo.UserVO;

@Service
public class InfoModifyServiceImpl implements InfoModifyService {
	@Autowired
	private UserDAO userDAO;
	
	//회원정보 수정 페이지 입력값 채우기
	@Override
	public UserVO getUserData(UserVO userVo) {
		return userDAO.getUser(userVo);
	}
	//회원정보 수정
	@Override
	public void updateUser(UserVO userVo) {
		userDAO.updateUser(userVo);

	}
	//회원 탈퇴
	@Override
	public void deleteUser(UserVO userVo) {
		userDAO.deleteUser(userVo);
		
		
		
	}

}
