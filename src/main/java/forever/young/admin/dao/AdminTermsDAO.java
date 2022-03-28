package forever.young.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import forever.young.admin.vo.AdminTermsVO;

@Repository
public class AdminTermsDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	// 약관리스트
	public List<AdminTermsVO> getTermslist() {
		return sqlSession.selectList("AdminTermsDAO.getTermslist");
	}
	
	// 약관수정
	public int updateTerms(AdminTermsVO admintermsvo) {
		return sqlSession.update("AdminTermsDAO.updateTerms", admintermsvo);
	}
	
	// 약관등록
	public int insertTerms(AdminTermsVO admintermsvo) {
		return sqlSession.insert("AdminTermsDAO.insertTerms", admintermsvo);
	}
	
	// 약관삭제
	public int deleteTerms(AdminTermsVO admintermsvo) {
		return sqlSession.delete("AdminTermsDAO.deleteTerms", admintermsvo);
	}
	
	// 약관정보
	public AdminTermsVO getTerms(AdminTermsVO admintermsvo) {
		return sqlSession.selectOne("AdminTermsDAO.getTerms", admintermsvo);
	}

}
