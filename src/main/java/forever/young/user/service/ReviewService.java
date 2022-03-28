package forever.young.user.service;

import java.util.List;

import forever.young.user.vo.GoodsQnaVO;
import forever.young.user.vo.ReviewVO;
import forever.young.user.vo.User_order_listVO;

public interface ReviewService {
	//리뷰 목록 가져오기
	List<ReviewVO> getGoodsReview(GoodsQnaVO vo);
//	String getReviewCount(int goodsSerial);
	//리뷰 작성시 해당 상품의 시리얼 물고오기
	public User_order_listVO reviewWrite(Integer order_details_serial);
	//리뷰 작성
	public int insertReview(ReviewVO vo);
	//작성 가능한 리뷰 개수 세기
	public Integer count(String user_id);
	//작성 가능한 리뷰 리스트 뽑아내기
	public List<User_order_listVO> reviewList(String user_id);
	//작성 완료된 리뷰 리스트 출력하기
	public List<ReviewVO> reviewCompleteList(String user_id);
	//수정하기 위한 데이터 물고 오기
	public ReviewVO updateReviewData(ReviewVO vo);
	//수정과정 처리
	public Integer updateReview(ReviewVO vo);
	//삭제과정 처리
	public Integer deleteReview(int review_serial);
	//작성 완료한 리뷰 수 세기
	public Integer reviewCount(String user_id);
	
	String getReviewCount(int goodsSerial);
}
