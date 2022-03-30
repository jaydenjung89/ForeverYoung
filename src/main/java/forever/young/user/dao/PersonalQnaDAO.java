package forever.young.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import forever.young.user.vo.Pagination;
import forever.young.user.vo.PersonalQnaVO;
import forever.young.user.vo.UserVO;

@Repository
public class PersonalQnaDAO {

	@Autowired
		private SqlSessionTemplate sqlSession;
	
	public UserVO getUser(UserVO userVo) {
		return sqlSession.selectOne("UserDAO.getUser", userVo);
	}
	
	public int insertPersonalQna(PersonalQnaVO vo) {
		System.out.println("인서트"+ vo);
		return sqlSession.insert("PersonalQnaDAO.insertPersonalQna", vo);
	}
	public int updatePersonalQna(PersonalQnaVO vo) {
		return sqlSession.update("PersonalQnaDAO.updatePersonalQna", vo);
	}
	public int deletePersonalQna(PersonalQnaVO vo) {
		return sqlSession.delete("PersonalQnaDAO.deletePersonalQna", vo);
	}
	public PersonalQnaVO getPersonalQna(PersonalQnaVO vo) {
		return sqlSession.selectOne("PersonalQnaDAO.getPersonalQna", vo);
	}
	public List<PersonalQnaVO> PersonalQnaList(PersonalQnaVO vo){
		return sqlSession.selectList("PersonalQnaDAO.getPersonalQnaList", vo);
	}
	public List<PersonalQnaVO> getBoard_personalList(Pagination pagination, String user_id){
		return sqlSession.selectList("PersonalQnaDAO.getBoard_personalList", user_id);
	}
	public int getBoardListCnt() {
		return sqlSession.selectOne("PersonalQnaDAO.getBoardListCnt");
	}
	
//	마이페이지
	public List<PersonalQnaVO> PersonalQnaList1(PersonalQnaVO vo){
		return sqlSession.selectList("PersonalQnaDAO.getPersonalQnaList1", vo);
	}
}
