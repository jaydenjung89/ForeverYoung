package forever.young.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import forever.young.user.vo.FaqVO;
import forever.young.user.vo.Pagination;


@Repository
public class FaqDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/* 리스트 전체 목록 불러오기*/
	public List<FaqVO> getBoard_faqList(Pagination pagination) {
		System.out.println("faq리스트 가져올꺼야");
		return sqlSession.selectList("faqDAO.getFAQList", pagination);
	}
	
	/* 게시글 총 개수 가져오기 */
	public int getFaqListCnt() {
		return sqlSession.selectOne("faqDAO.getFaqListCnt");
	}
	
	/* faq 상세글 하나 불러오기*/
	
	

}
