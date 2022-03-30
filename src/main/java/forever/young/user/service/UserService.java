package forever.young.user.service;

import java.util.List;

import org.springframework.web.bind.support.SessionStatus;

import forever.young.user.vo.EmailSendVO;
import forever.young.user.vo.UserDetailVO;
import forever.young.user.vo.UserVO;
import forever.young.user.vo.User_shipping_listVO;

public interface UserService {

	// 회원 가입 처리
	void register(UserVO userVo) throws Exception;

	// 로그인 처리
	UserVO login(UserVO userVo) throws Exception;

	// 로그아웃 처리
	void logout(SessionStatus sessionStatus);

	// 회원가입 아이디 중복 체크
	boolean idCheck(UserVO userVo);

	public UserVO getUser(UserVO userVo);

	// 이메일 중복확인
	boolean emailCheck(UserVO userVo);

	UserVO loginGetUser(UserVO userVo);

	/* 아이디 정보 가져오기 */
	UserVO getUserInfo(String user_id);

	/* 이메일 키 보내주기 */
	EmailSendVO getSendEmailKey();

	void newPw(UserVO userVo);

	/* 아이디 찾기 */
	String idFind(UserVO userVo);

	/* 비밀번호 찾기 */
	String pwFind(UserVO userVo);

	List<User_shipping_listVO> shipping(String user_id);

	public void insertUserDetail(UserDetailVO userVo);
}
