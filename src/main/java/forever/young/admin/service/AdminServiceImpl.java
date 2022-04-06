package forever.young.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.support.SessionStatus;

import forever.young.admin.dao.AdminDAO;
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
@Service("AdminService")
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDAO adminDao;

	// =========================관리자=============================
	@Override
	public AdminVO getAdmin(AdminVO admin) {
		return adminDao.getAdmin(admin);
	}

	@Override
	public List<AdminVO> adminList(AdminVO admin) {
		return adminDao.getAdminList(admin);
	}

	@Override
	public void logout(SessionStatus sessionStatus) {
		sessionStatus.setComplete();
	}

	@Override
	public int deleteAdmin(AdminVO admin) {
		return adminDao.deleteAdmin(admin);
	}

	// ======================회원=========================
	@Override
	public List<AdminUserVO> userList(AdminUserVO adminUser) {
		return adminDao.getUserList(adminUser);
	}

	// 회원 삭제
	@Override
	public int deleteUser(AdminUserVO user) {
		return adminDao.deleteUser(user);
	}
	//회원 수정
		@Override
		public int updateUser(AdminUserVO user) {
			return adminDao.updateUser(user);
		}
	//회원 메일 보내기
//		@Override
//		public String getMail(AdminUserVO user) {
//			return adminDao.getMail(user);
//		}
		@Override
		public AdminUserVO getUserInfo(AdminUserVO user) {
			// TODO Auto-generated method stub
			return adminDao.getUserInfo(user);
		}
		@Override
		public String getMail(AdminUserVO user) {
			return adminDao.getMail(user);
		}
		@Override
		public int getUserStatus(AdminUserVO user) {
			// TODO Auto-generated method stub
			return adminDao.getUserStatus(user);
		}

	// =====================1:1문의=========================
	// 관리자 -1:1 문의 답변 대기 리스트
	@Override
	public List<QnaPersonalVO> getQnaPersonalList(QnaPersonalVO qna) {
		return adminDao.getQnaPersonalList(qna);
	}

	// 관리자 - 1:1 문의 답변 대기 세부사항
	@Override
	public QnaPersonalVO getQnaPersonalWrite(QnaPersonalVO qna) {
		return adminDao.getQnaPersonalWrite(qna);
	}

	// 관리자 - 1:1 문의 답변 등록
	@Override
	public int qnaPersonalUpdate(QnaPersonalVO qna) {
		return adminDao.qnaPersonalUpdate(qna);
	}
	// =====================공지사항=========================
	   // 공지사항 리스트
	   @Override
	   public List<NoticeVO> getNoticeList(NoticeVO notice) {
	      return adminDao.getNoticeList(notice);
	   }

	   // 공지사항 삭제
	   @Override
	   public int deleteNotice(NoticeVO notice) {
	      return adminDao.deleteNotice(notice);
	   }

	   // 공지사항 세부
	   @Override
	   public NoticeVO getNotice(NoticeVO notice) {
	      return adminDao.getNotice(notice);
	   }

	   // update
	   @Override
	   public int updateNotice(NoticeVO notice) {
	      return adminDao.updateNotice(notice);
	   }

	   // 공지사항 입력
	   @Override
	   public int insertNotice(NoticeVO notice) {
	      return adminDao.insertNotice(notice);
	   }

	   // =====================FAQ=========================
	   // FAQ 리스트
	   @Override
	   public List<AdminFaqVO> getFaqList(AdminFaqVO faq) {
	      return adminDao.getFaqList(faq);
	   }

	   // FAQ 삭제
	   @Override
	   public int deleteFaq(AdminFaqVO faq) {
	      return adminDao.deleteFaq(faq);
	   }

	   // FAQ 입력
	   @Override
	   public int insertFaq(AdminFaqVO faq) {
	      return adminDao.insertFaq(faq);
	   }

	   // FAQ 세부
	   @Override
	   public AdminFaqVO getFaq(AdminFaqVO faq) {
	      return adminDao.getFaq(faq);
	   }

	   // update
	   @Override
	   public int updateFaq(AdminFaqVO faq) {
	      return adminDao.updateFaq(faq);
	   }

	   // =====================product===========================
	   // 상품조회리스트
	   @Override
	   public List<AdminRegistVO> goodsList(AdminRegistVO regist) {
	      return adminDao.goodsList(regist);
	   }

	   // 상품삭제
	   @Override
	   public int deleteGoods(AdminRegistVO regist) {
	      return adminDao.deleteGoods(regist);
	   }

	   // 상품 수정
	   @Override
	   public int updateGoods(AdminRegistVO regist) {
	      return adminDao.updateGoods(regist);
	   }

	   @Override
	   public int updateGoodsDetail(AdminRegistVO regist) {
	      return adminDao.updateGoodsDetail(regist);
	   }

	   // 상품 등록
	   @Override
	   public int insertGoods(ProductVO product) {
	      return adminDao.insertGoods(product);
	   }

	   @Override
	   public int insertGoodsDetail(ProductVO product) {
	      return adminDao.insertGoodsDetail(product);
	   }

	   @Override
	   public int insertGoodsStock(ProductVO product) {
	      return adminDao.insertGoodsStock(product);
	   }

	   // ==========================카테고리 리스트=============================
	   @Override
	   public List<CategoryFirstVO> getCategoryFirstList(ProductVO product) {
	      return adminDao.getCategoryFirstList(product);
	   }

	   @Override
	   public List<CategorySecondVO> getCategorySecondList(ProductVO product) {
	      return adminDao.getCategorySecondList(product);
	   }

	   @Override
	   public List<CategoryThirdVO> getCategoryThirdList(ProductVO product) {
	      return adminDao.getCategoryThirdList(product);
	   }

	   @Override
	   public ProductVO getProduct(ProductVO product) {
	      return adminDao.getProduct(product);
	   }

	   @Override
	   public ProductVO getProductDetail(ProductVO product) {
	      return adminDao.getProductDetail(product);
	   }
	   //================================리뷰=====================
	 //관리자 리뷰있는 상품
		@Override
		public List<AdminReviewVO> getReviewGoodsName(AdminReviewVO review)throws Exception {
			// TODO Auto-generated method stub
			return adminDao.getReviewGoodsName(review);
		}
		
		//관리자 리뷰 내용
		@Override
		public AdminReviewVO getReviewContent(AdminReviewVO review)throws Exception {
			// TODO Auto-generated method stub
			return adminDao.getReviewContent(review);
		}
		
		//관리자 리뷰 삭제
		@Override
		public int deleteReview(AdminReviewVO review) throws Exception {
			// TODO Auto-generated method stub
			return adminDao.deleteReview(review);
		}
		
		//관리자 리뷰 리스트
		@Override
		public List<AdminReviewVO> getReviewList(AdminReviewVO review) throws Exception {
			// TODO Auto-generated method stub
			return adminDao.getReviewList(review);
		}
		//=====================QNA========================================
		//관리자 상품 문의 리스트 (답변대기)
		@Override
		public List<GoodsQnaVO> gqnaList(GoodsQnaVO gqna) throws Exception {
			// TODO Auto-generated method stub
			return adminDao.gqnaList(gqna);
		}
		
		//관리자 상품 문의 삭제
		@Override
		public int deleteGqna(GoodsQnaVO gqna) throws Exception {
			// TODO Auto-generated method stub
			return adminDao.deleteGqna(gqna);
		}
		
		//관리자 상품 문의 답변 전
		@Override
		public GoodsQnaVO gqnaOne(GoodsQnaVO gqna) throws Exception {
			// TODO Auto-generated method stub
			return adminDao.gqnaOne(gqna);
		}
		
		//관리자 상품 문의 답변 등록
		@Override
		public int updateGqna(GoodsQnaVO gqna) throws Exception {
			// TODO Auto-generated method stub
			return adminDao.updateGqna(gqna);
		}
		
		//관리자 상품 문의 리스트(답변 완료)
		@Override
		public List<GoodsQnaVO> gqnaListSuc(GoodsQnaVO gqna) throws Exception {
			// TODO Auto-generated method stub
			return adminDao.gqnaListSuc(gqna);
		}
		
		//관리자 상품 문의 답변 확인 및 수정
		@Override
		public int updateGqnaSuc(GoodsQnaVO gqna) throws Exception {
			// TODO Auto-generated method stub
			return adminDao.updateGqnaSuc(gqna);
		}
		//관리자 주문관리
		@Override
		public List<AdminOrderVO> getOrderWaitList() throws Exception {
			// TODO Auto-generated method stub
			return adminDao.getOderWaitList();
		}
		
		//관리자 주문관리 (결제 취소)
		@Override
		public List<AdminOrderVO> getOrderCancleList() throws Exception {
			// TODO Auto-generated method stub
			return adminDao.getOrderCancleList();
		}
		//관리자 배너 리스트
		@Override
		public List<AdminBannerVO> getBannerList() throws Exception {
			// TODO Auto-generated method stub
			return adminDao.getBannerList();
		}
		
		//관리자 배너 등록
		@Override
		public int insertBanner(AdminBannerVO banner) throws Exception {
			// TODO Auto-generated method stub
			return adminDao.insertBanner(banner);
		}
		
		//관리자 배너 상세
		@Override
		public AdminBannerVO getBanner(AdminBannerVO banner) throws Exception {
			// TODO Auto-generated method stub
			return adminDao.getBanner(banner);
		}
		
		//관리자 배너 삭제
		@Override
		public int deleteBanner(AdminBannerVO banner) throws Exception {
			// TODO Auto-generated method stub
			return adminDao.deleteBanner(banner);
		}
		
		//관리자 배너 수정 (이미지 있을시)
		@Override
		public int updateBanner1(AdminBannerVO banner) throws Exception {
			// TODO Auto-generated method stub
			return adminDao.updateBanner1(banner);
		}
		
		//관리자 배너 수정 (이미지 없을시)
		@Override
		public int updateBanner2(AdminBannerVO banner) throws Exception {
			// TODO Auto-generated method stub
			return adminDao.updateBanner2(banner);
		}

		
		
}
