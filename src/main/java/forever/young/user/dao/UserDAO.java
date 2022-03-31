package forever.young.user.dao;

import java.util.List;

import forever.young.user.vo.EmailSendVO;
import forever.young.user.vo.UserDetailVO;
import forever.young.user.vo.UserVO;
import forever.young.user.vo.User_shipping_listVO;

public interface UserDAO {
	
	//회원가입
	void register(UserVO userVo) throws Exception;
	//로그인
	UserVO login(UserVO userVo) throws Exception;
	
	UserVO getUser(UserVO userVo) ;
	
	//이메일 체크확인
	UserVO checkEmail(UserVO userVo);
	
	//회원수정
	void updateUser(UserVO userVo);
	
	//회원삭제
	void deleteUser(UserVO userVo);
	
	 public void newPw(UserVO user);
	 public EmailSendVO getSendEmailKey();
	 public UserVO getUserInfo(String user_id);
	 public String pwFind(UserVO user);
	 public String idFind(UserVO user);
	 public List<User_shipping_listVO> shipping(String user_id);
	 public void insertUserDetail(UserDetailVO user);
	 
	 public List<UserVO> getTotalUser(UserVO userVo);
}
