package forever.young.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forever.young.user.dao.ReviewDAO;
import forever.young.user.vo.GoodsQnaVO;
import forever.young.user.vo.ReviewVO;
import forever.young.user.vo.User_order_listVO;

@Service
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	private ReviewDAO reviewDAO;
	
	@Override
	public List<ReviewVO> getGoodsReview(GoodsQnaVO vo) {
		return reviewDAO.getGoodsReview(vo);
	}

	@Override
	public User_order_listVO reviewWrite(Integer order_details_serial) {
		
		return reviewDAO.reviewWrite(order_details_serial);
	}

	@Override
	public int insertReview(ReviewVO vo) {
		
		return reviewDAO.insertReview(vo);
	}

	@Override
	public Integer count(String user_id) {
		
		return reviewDAO.count(user_id);
	}

	@Override
	public List<User_order_listVO> reviewList(String user_id) {
		
		return reviewDAO.reviewList(user_id);
	}

	@Override
	public List<ReviewVO> reviewCompleteList(String user_id) {
		
		return reviewDAO.reviewCompleteList(user_id);
	}

	@Override
	public ReviewVO updateReviewData(ReviewVO vo) {
	
		return reviewDAO.updateReviewData(vo);
	}

	@Override
	public Integer updateReview(ReviewVO vo) {
		
		return reviewDAO.updateReview(vo);
	}

	@Override
	public Integer deleteReview(int review_serial) {
		
		return reviewDAO.deleteReview(review_serial);
	}

	@Override
	public Integer reviewCount(String user_id) {
		
		return reviewDAO.reviewCount(user_id);
	}

	@Override
	public String getReviewCount(int goodsSerial) {
		
		return reviewDAO.getReviewCount(goodsSerial);
	}

	@Override
	public List<ReviewVO> getReviewDel(ReviewVO vo) {
		// TODO Auto-generated method stub
		return reviewDAO.getReviewDel(vo);
	}

	


}
