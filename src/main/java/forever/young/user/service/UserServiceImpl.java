package forever.young.user.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.support.SessionStatus;

import forever.young.user.dao.UserDAO;
import forever.young.user.vo.EmailSendVO;
import forever.young.user.vo.UserVO;
import forever.young.user.vo.User_shipping_listVO;

@Service
public class UserServiceImpl implements UserService {
	
	private final UserDAO user;
	
	@Inject
	public UserServiceImpl(UserDAO user) {
		this.user=user;
	}
	
	//회원 가입
	@Override
	public void register(UserVO userVo) throws Exception {
		user.register(userVo);

	}
	
	//로그인
	@Override
	public UserVO login(UserVO userVo) throws Exception {
		return user.login(userVo);
	}
	//로그아웃
	@Override
	public void logout(SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		
	}
	
	//회원가입 아이디 체크
	@Override
	public boolean idCheck(UserVO userVo) {
		UserVO userData=user.getUser(userVo);
		if(userData==null)
			return true;
		else
			return false;
	}

	@Override
	public UserVO getUser(UserVO userVo) {
		
		return user.getUser(userVo);
	}
	
	//이메일 중복 체크
	@Override
	public boolean emailCheck(UserVO userVo) {
		UserVO userData=user.checkEmail(userVo);
		if(userData==null) {
			return true;
		}else {
			return false;
		}
	}
	@Override
	public UserVO loginGetUser(UserVO userVo) {
		return user.getUser(userVo);
	}
	/* 아이디 찾기 */
	   @Override
	   public String idFind(UserVO userVo) {
	      
	      return user.idFind(userVo); 
	   }
	   
	   /* 비밀번호 찾기 */
	   
	   @Override
	   public String pwFind(UserVO userVo) {
	      
	      return user.pwFind(userVo);
	   }
	   @Override
	   public EmailSendVO getSendEmailKey() {
	 
	      return user.getSendEmailKey();
	   }
	   @Override
	   public void newPw(UserVO userVo) {
	      user.newPw(userVo);
	      
	   }

	   @Override
	   public UserVO getUserInfo(String user_id) {
	      
	      return user.getUserInfo(user_id);
	   }

	@Override
	public List<User_shipping_listVO> shipping(String user_id) {
		// TODO Auto-generated method stub
		return user.shipping(user_id);
	}

	
}
