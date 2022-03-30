package forever.young.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import forever.young.user.vo.GoodsQnaVO;
import forever.young.user.vo.ReviewVO;
import forever.young.user.vo.User_order_listVO;

@Repository
public class ReviewDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//리뷰 목록 가져오기 
	public List<ReviewVO> getGoodsReview(GoodsQnaVO vo){
		return sqlSession.selectList("reviewDAO.getGoodsReview", vo);
	}
	
	public String getReviewCount(int goodsSerial) {
		return sqlSession.selectOne("reviewDAO.getReviewCount", goodsSerial);
	}
	//리뷰작성 할 때 해당 상품 물고가기
	public User_order_listVO reviewWrite(Integer order_details_serial) {
		
		return sqlSession.selectOne("reviewDAO.reviewWrite", order_details_serial);
	}
	//리뷰 작성
	public int insertReview(ReviewVO vo) {
		
		return sqlSession.insert("reviewDAO.reviewInsert", vo);
	}
	//작성가능한 리뷰 개수 카운트
	public Integer count(String user_id) {
		
		return sqlSession.selectOne("reviewDAO.count", user_id);
	}
	//마이페이지에서 작성 가능한 리뷰 리스트 뽑아내기
	public List<User_order_listVO> reviewList(String user_id){
		
		return sqlSession.selectList("reviewDAO.myreviewList", user_id);
	}
	//작성완료된 리뷰 리스트
	public List<ReviewVO> reviewCompleteList(String user_id) {
		
		return sqlSession.selectList("reviewDAO.reviewCompleteList", user_id);
	}
	//작성 완료한 리뷰 수 세기
	public Integer reviewCount(String user_id) {
		return sqlSession.selectOne("reviewDAO.reviewCount", user_id);
	}
	//수정하기 위해 물고온 데이터
	public ReviewVO updateReviewData(ReviewVO vo) {
		System.out.println("---> MyBatis로 수정하기 위해 물고온 데이터");
		return sqlSession.selectOne("reviewDAO.updateData", vo);
	}
	//수정과정 처리
	public Integer updateReview(ReviewVO vo) {
		System.out.println("----> MyBatis로 수정과정 처리");
		return sqlSession.update("reviewDAO.updateReview", vo);
	}
	//리뷰 삭제
	public Integer deleteReview(int review_serial) {
		System.out.println("----> MyBatis로 리뷰 삭제 과정 처리");
		return sqlSession.delete("reviewDAO.reviewDelete", review_serial);
	}
	//리뷰삭제위해 가져온 데이터
	public List<ReviewVO> getReviewDel(ReviewVO vo) {
		return sqlSession.selectList("reviewDAO.reviewForDelete", vo);
	}
}
