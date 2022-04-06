package forever.young.admin.service;

import java.util.List;

import org.springframework.web.bind.support.SessionStatus;

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

public interface AdminService {

	// ======================관리자=============================
	// 관리자 얻어오기
	AdminVO getAdmin(AdminVO admin);

	// 관리자 리스트 얻어오기
	List<AdminVO> adminList(AdminVO admin);

	// 관리자 로그아웃
	void logout(SessionStatus sessionStatus);

	// 관리자 삭제
	int deleteAdmin(AdminVO admin);

	// ======================회원==============================
	// 회원 리스트 얻어오기
	List<AdminUserVO> userList(AdminUserVO adminUser);

	// 회원 삭제
	int deleteUser(AdminUserVO user);
	
	public int updateUser(AdminUserVO user);
	
	//public String getMail(AdminUserVO user);
	//회원 정지 이메일보내기
	public AdminUserVO getUserInfo(AdminUserVO user);
	public String getMail(AdminUserVO user);
	public int getUserStatus(AdminUserVO user);
	// =======================1:1문의==============================
	// 1:1문의 답변대기 리스트
	List<QnaPersonalVO> getQnaPersonalList(QnaPersonalVO qna);

	// 1:1문의 답변대기 세부사항
	public QnaPersonalVO getQnaPersonalWrite(QnaPersonalVO qna);

	// 1:1문의 답변대기 답변 등록
	int qnaPersonalUpdate(QnaPersonalVO qna);
	
	// =======================공지사항==============================
	   // 공지사항 리스트
	   List<NoticeVO> getNoticeList(NoticeVO notice);

	   // 공지사항 삭제
	   int deleteNotice(NoticeVO notice);

	   // 공지사항 세부
	   NoticeVO getNotice(NoticeVO notice);

	   // update
	   int updateNotice(NoticeVO notice);

	   // 공지사항 입력
	   int insertNotice(NoticeVO notice);

	   // =======================FAQ==============================
	   // FAQ 리스트
	   List<AdminFaqVO> getFaqList(AdminFaqVO faq);

	   // FAQ 삭제
	   int deleteFaq(AdminFaqVO faq);

	   // FAQ 입력
	   int insertFaq(AdminFaqVO faq);

	   // 공지사항 세부
	   AdminFaqVO getFaq(AdminFaqVO faq);

	   // update
	   int updateFaq(AdminFaqVO faq);

	   // =======================product=============================
	   // 상품조회리스트
	   List<AdminRegistVO> goodsList(AdminRegistVO regist);

	   // 상품 삭제
	   int deleteGoods(AdminRegistVO regist);

	   // 상품 수정
	   int updateGoods(AdminRegistVO regist);

	   int updateGoodsDetail(AdminRegistVO regist);

	   // 상품 등록
	   int insertGoods(ProductVO product);

	   int insertGoodsDetail(ProductVO product);

	   int insertGoodsStock(ProductVO product);

	   // ==========================카테고리 리스트=============================
	   List<CategoryFirstVO> getCategoryFirstList(ProductVO product);

	   List<CategorySecondVO> getCategorySecondList(ProductVO product);

	   List<CategoryThirdVO> getCategoryThirdList(ProductVO product);

	   public ProductVO getProduct(ProductVO product);

	   public ProductVO getProductDetail(ProductVO product);
	   //==================리뷰============================
	 //관리자 리뷰 상품
		List<AdminReviewVO> getReviewGoodsName(AdminReviewVO review)throws Exception;

		//관리자 리뷰 내용
		AdminReviewVO getReviewContent(AdminReviewVO review)throws Exception;
		
		//관리자 리뷰 삭제
		int deleteReview(AdminReviewVO review)throws Exception;
		
		//관리자 리뷰 리스트
		List<AdminReviewVO> getReviewList(AdminReviewVO review)throws Exception;
		//===============================QNA=============================
		//관리자 상품 문의 리스트 (답변 대기)
		List<GoodsQnaVO> gqnaList(GoodsQnaVO gqna)throws Exception;
		
		//관리자 상품 문의 리스트 삭제(답변 대기)
		int deleteGqna(GoodsQnaVO gqna)throws Exception;
		
		//관리자 상품 문의 답변 전 
		GoodsQnaVO gqnaOne(GoodsQnaVO gqna)throws Exception;
		
		//관리자 상품 문의 답변
		int updateGqna(GoodsQnaVO gqna)throws Exception;
		
		//관리자 상품 문의 리스트(답변 완료)
		List<GoodsQnaVO> gqnaListSuc(GoodsQnaVO gqna)throws Exception;
		
		//관리자 상품 문의 답변 확인 및 수정
		int updateGqnaSuc(GoodsQnaVO gqna)throws Exception;
		//====================주문관리==================================
		//관리자 주문관리 (결제완료)
		List<AdminOrderVO> getOrderWaitList()throws Exception;
		
		//관리자 주문관리 리스트 (결제취소)
		List<AdminOrderVO> getOrderCancleList()throws Exception;
		//=====================배너===============================
		//관리자 배너 리스트
		List<AdminBannerVO>getBannerList()throws Exception;
		
		//관리자 배너 등록
		int insertBanner(AdminBannerVO banner)throws Exception;
		
		//관리자 배너 상세
		AdminBannerVO getBanner(AdminBannerVO banner)throws Exception;
		
		//관리자 배너 삭제
		int deleteBanner(AdminBannerVO banner)throws Exception;
		
		//관리자 배너 수정
		int updateBanner1(AdminBannerVO banner)throws Exception;
		
		int updateBanner2(AdminBannerVO banner)throws Exception;
}
