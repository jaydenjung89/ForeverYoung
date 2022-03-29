package forever.young.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import forever.young.user.vo.EmailSendVO;
import forever.young.user.vo.UserDetailVO;
import forever.young.user.vo.UserVO;
import forever.young.user.vo.User_shipping_listVO;

@Repository
public class UserDAOImpl implements UserDAO {

		private static final String NAMESPACE="UserDAO";
		
		@Autowired
		private SqlSessionTemplate sqlSession;
		
		
		//회원가입처리
		@Override
		public void register(UserVO userVo) throws Exception {
			sqlSession.insert(NAMESPACE+".register", userVo);

	}
		@Override
		public UserVO login(UserVO userVo) throws Exception {
			return sqlSession.selectOne(NAMESPACE+".login", userVo);
			
		}
		@Override
		public UserVO getUser(UserVO userVo) {
			return sqlSession.selectOne(NAMESPACE+".getUser", userVo);
		}
		@Override
		public UserVO checkEmail(UserVO userVo) {
			return sqlSession.selectOne(NAMESPACE+".checkEmail", userVo);
		}
		@Override
		public void updateUser(UserVO userVo) {
			//System.out.println("1111");
			//System.out.println(userVo.toString());
			sqlSession.update(NAMESPACE+".updateUser", userVo);
			//System.out.println("2222");
			
		}
		@Override
		public void deleteUser(UserVO userVo) {
			System.out.println(userVo.toString());
			sqlSession.delete(NAMESPACE+".deleteUser", userVo);
			
		}
		//아이디 찾기
		   public String idFind(UserVO userVo) {
		      return sqlSession.selectOne("UserDAO.idFind", userVo);
		   }
		   
		   //비밀번호 찾기
		   public String pwFind(UserVO userVo) {
		      return sqlSession.selectOne("UserDAO.pwFind", userVo);
		   }
		   public UserVO getUserInfo(String user_id) {
		      return sqlSession.selectOne("UserDAO.getUserInfo", user_id);
		   }
		   public EmailSendVO getSendEmailKey() {
		      return sqlSession.selectOne("UserDAO.getSendEmailKey");
		   }
		   public void newPw(UserVO userVo) {
		      sqlSession.update("UserDAO.newPW", userVo);
		   }
		@Override
		public List<User_shipping_listVO> shipping(String user_id) {
			// TODO Auto-generated method stub
			return sqlSession.selectList("UserDAO.getUserShipping", user_id);
		}
		@Override
		public void insertUserDetail(UserDetailVO userVo) {
			sqlSession.insert("UserDAO.userDetail", userVo);
			
		}

}
