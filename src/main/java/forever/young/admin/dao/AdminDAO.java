package forever.young.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import forever.young.admin.vo.AdminBannerVO;
import forever.young.admin.vo.AdminFaqVO;
import forever.young.admin.vo.AdminOrderVO;
import forever.young.admin.vo.AdminRegistVO;
import forever.young.admin.vo.AdminReviewVO;
import forever.young.admin.vo.AdminUserVO;
import forever.young.admin.vo.AdminVO;
import forever.young.admin.vo.GoodsQnaVO;
import forever.young.admin.vo.NoticeVO;
import forever.young.admin.vo.QnaPersonalVO;
import forever.young.vo.CategoryFirstVO;
import forever.young.vo.CategorySecondVO;
import forever.young.vo.CategoryThirdVO;
import forever.young.vo.ProductVO;

@Repository
public class AdminDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	// ==========================관리자===============================
	// 관리자 얻어오기
	public AdminVO getAdmin(AdminVO admin) {
		return sqlSession.selectOne("AdminDAO.getAdmin", admin);
	}

	// 관리자 삽입
	public int insertAdmin(AdminVO admin) {
		return sqlSession.insert("AdminDAO.insertAdmin", admin);
	}

	// 관리자 리스트 얻어오기
	public List<AdminVO> getAdminList(AdminVO adminUser) {
		return sqlSession.selectList("AdminDAO.getAdminList", adminUser);
	}

	// 관리자 수정
	public int updateManager(AdminVO admin) {
		return sqlSession.update("AdminDAO.update", admin);
	}

	// 관리자 삭제
	public int deleteAdmin(AdminVO admin) {
		return sqlSession.delete("AdminDAO.deleteAdmin", admin);
	}

	// ============================회원===============================
	// 회원 리스트 얻어오기
	public List<AdminUserVO> getUserList(AdminUserVO adminUser) {
		return sqlSession.selectList("AdminDAO.getUserlist", adminUser);
	}

	// 유저 삭제
	public int deleteUser(AdminUserVO user) {
		return sqlSession.delete("AdminDAO.deleteUser", user);
	}

	// ==========================1:1문의=============================
	// 1:1문의 답변 대기 리스트
	public List<QnaPersonalVO> getQnaPersonalList(QnaPersonalVO qna) {
		return sqlSession.selectList("qnaDAO.getQnaPersonalList", qna);
	}

	// 1:1문의 답변 대기 세부사항
	public QnaPersonalVO getQnaPersonalWrite(QnaPersonalVO qna) {
		return sqlSession.selectOne("qnaDAO.getQnaPersonalWrite", qna);
	}

	// 1:1문의 답변 등록
	public int qnaPersonalUpdate(QnaPersonalVO qna) {
		return sqlSession.update("qnaDAO.qnaPersonalUpdate", qna);
	}
	// ==========================공지사항==============================
	   // 공지사항 리스트
	   public List<NoticeVO> getNoticeList(NoticeVO notice) {
	      return sqlSession.selectList("AdminDAO.getNoticeList", notice);
	   }

	   // 공지사항 삭제
	   public int deleteNotice(NoticeVO notice) {
	      return sqlSession.delete("AdminDAO.deleteNotice", notice);
	   }

	   // 공지사항 세부
	   public NoticeVO getNotice(NoticeVO notice) {
	      return sqlSession.selectOne("AdminDAO.getNotice", notice);
	   }

	   // update
	   public int updateNotice(NoticeVO notice) {
	      return sqlSession.update("AdminDAO.updateNotice", notice);
	   }

	   // 공지사항 입력
	   public int insertNotice(NoticeVO notice) {
	      return sqlSession.insert("AdminDAO.insertNotice", notice);
	   }

	   // ==========================FAQ==============================
	   // FAQ 리스트
	   public List<AdminFaqVO> getFaqList(AdminFaqVO faq) {
	      return sqlSession.selectList("AdminDAO.getFaqList", faq);
	   }

	   // FAQ 삭제
	   public int deleteFaq(AdminFaqVO faq) {
	      return sqlSession.delete("AdminDAO.deleteFaq", faq);
	   }

	   // FAQ 입력
	   public int insertFaq(AdminFaqVO faq) {
	      return sqlSession.insert("AdminDAO.insertFaq", faq);
	   }

	   // FAQ 세부
	   public AdminFaqVO getFaq(AdminFaqVO faq) {
	      return sqlSession.selectOne("AdminDAO.getFaq", faq);
	   }

	   // FAQ update
	   public int updateFaq(AdminFaqVO faq) {
	     
	      return sqlSession.update("AdminDAO.updateFaq", faq);
	   }

	   // ==========================product=============================
	   // 상품조회리스트
	   public List<AdminRegistVO> goodsList(AdminRegistVO regist) {
	      return sqlSession.selectList("RegistDAO.getGoodsList", regist);
	   }

	   // 상품 삭제
	   public int deleteGoods(AdminRegistVO regist) {
	      return sqlSession.delete("RegistDAO.deleteGoods", regist);
	   }

	   // 상품 수정
	   public int updateGoods(AdminRegistVO regist) {
	      return sqlSession.update("RegistDAO.updateGoods", regist);
	   }

	   public int updateGoodsDetail(AdminRegistVO regist) {
	      return sqlSession.update("RegistDAO.updateGoodsDetail", regist);
	   }

	   // 상품 등록
	   public int insertGoods(ProductVO product) {
	      return sqlSession.insert("RegistDAO.insertGoods", product);
	   }

	   public int insertGoodsDetail(ProductVO product) {
	      return sqlSession.insert("RegistDAO.insertGoodsDetail", product);
	   }

	   public int insertGoodsStock(ProductVO product) {
	      return sqlSession.insert("RegistDAO.insertGoodsStock", product);
	   }

	   // ==========================카테고리 리스트=============================
	   public List<CategoryFirstVO> getCategoryFirstList(ProductVO product) {
	      return sqlSession.selectList("RegistDAO.getCategoryFirstList", product);
	   }

	   public List<CategorySecondVO> getCategorySecondList(ProductVO product) {
	      return sqlSession.selectList("RegistDAO.getCategorySecondList", product);
	   }

	   public List<CategoryThirdVO> getCategoryThirdList(ProductVO product) {
	      return sqlSession.selectList("RegistDAO.getCategoryThirdList", product);
	   }

	   public ProductVO getProduct(ProductVO product) {
	      return sqlSession.selectOne("RegistDAO.getProduct", product);
	   }

	   public ProductVO getProductDetail(ProductVO product) {
	      return sqlSession.selectOne("RegistDAO.getProductDetail", product);
	   }
	   ///////////////////////////////////////////////////////////////
	 //관리자 리뷰 리스트
		public List<AdminReviewVO> getReviewGoodsName(AdminReviewVO review)throws Exception{
			return sqlSession.selectList("adminReviewDAO.reviewGoodsName", review);
		}
		
		//관리자 리뷰 내용
		public AdminReviewVO getReviewContent(AdminReviewVO review)throws Exception{
			return sqlSession.selectOne( "adminReviewDAO.reviewContent", review);
		}
		
		//관리자 리뷰 삭제
		public int deleteReview(AdminReviewVO review)throws Exception {
			return sqlSession.delete("adminReviewDAO.deleteReview", review);
		}
		
		//관리자 리뷰 리스트
		public List<AdminReviewVO> getReviewList(AdminReviewVO review)throws Exception{
			return sqlSession.selectList( "adminReviewDAO.reviewList", review);
		}
		//=========================QNA========================
		//관리자 QnA 리스트(답변 대기)
		public List<GoodsQnaVO> gqnaList(GoodsQnaVO gqna)throws Exception{
			return sqlSession.selectList("gqnaDAO.gqnaList", gqna);
		}
		
		//관리자 QnA 문의 삭제(답변 대기)
		public int deleteGqna(GoodsQnaVO gqna)throws Exception {
			return sqlSession.delete( "gqnaDAO.deleteGqna", gqna);
		}
		
		//관리자 QnA 문의 답변 하기 전
		public GoodsQnaVO gqnaOne(GoodsQnaVO gqna) {
			return sqlSession.selectOne("gqnaDAO.gqnaOne", gqna);
		}
		
		//관리자 QnA 문의 답변
		public int updateGqna(GoodsQnaVO gqna)throws Exception{
			return sqlSession.update("gqnaDAO.updateGqna", gqna);
		}
		
		//관리자 QnA 문의 리스트(답변 완료)
		public List<GoodsQnaVO> gqnaListSuc(GoodsQnaVO gqna)throws Exception{
			return sqlSession.selectList("gqnaDAO.gqnaListSuc", gqna);
		}
		
		//관리자 QnA 문의 리스트 답변 확인 및 수정 
		public int updateGqnaSuc(GoodsQnaVO gqna)throws Exception{
			return sqlSession.update("gqnaDAO.updateGqna", gqna);
		}
		//============================주문관리===============================
		//관리자 주문결제 (결제 완료 ~ 배송 준비 중)
		public List<AdminOrderVO> getOderWaitList()throws Exception {
			return sqlSession.selectList("adminOrderDAO.getOrderWaitList");
		}
		
		//관리자 주문결제 order 테이블 결제 취소
		public List<AdminOrderVO> getOrderCancleList()throws Exception{
			return sqlSession.selectList("adminOrderDAO.getOrderCancleList");
		}
		//=================================배너관리==========================
			
		//관리자 배너 리스트
		public List<AdminBannerVO> getBannerList()throws Exception {
			return sqlSession.selectList("bannerDAO.getBannerList");
		}
		
		//관리자 배너 등록
		public int insertBanner(AdminBannerVO banner)throws Exception {
			return sqlSession.insert("bannerDAO.insertBanner", banner);
		}
		
		//관리자 상세페이지
		public AdminBannerVO getBanner(AdminBannerVO banner)throws Exception {
			return sqlSession.selectOne("bannerDAO.getBanner", banner);
		}
		
		//관리자 배너 삭제
		public int deleteBanner(AdminBannerVO banner)throws Exception{
			return sqlSession.delete("bannerDAO.deleteBanner", banner);
		}
		
		//관리자 배너 수정
		public int updateBanner1(AdminBannerVO banner)throws Exception{
			return sqlSession.update("bannerDAO.updateBanner1", banner);
		}
		
		public int updateBanner2(AdminBannerVO banner)throws Exception{
			return sqlSession.update("bannerDAO.updateBanner2",banner);
		}
}
