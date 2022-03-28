package forever.young.user.service;

import org.springframework.web.bind.support.SessionStatus;

import forever.young.user.vo.UserVO;

public interface InfoModifyService {
	UserVO getUserData(UserVO userVo);
	void updateUser(UserVO userVo);
	void deleteUser(UserVO userVo);
}
