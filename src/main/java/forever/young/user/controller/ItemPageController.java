package forever.young.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import forever.young.user.service.GoodsQnaService;
import forever.young.user.service.HeaderService;
import forever.young.user.service.ItemPageService;
import forever.young.user.service.ReviewService;
import forever.young.user.vo.GoodsQnaVO;
import forever.young.user.vo.ItemPageVO;
import forever.young.user.vo.ReviewVO;
import forever.young.vo.CategoryFirstVO;
import forever.young.vo.CategorySecondVO;
import forever.young.vo.CategoryThirdVO;

@Controller
public class ItemPageController {
	@Autowired
	private ItemPageService itempageService;
	@Autowired
	private HeaderService headerService;
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private GoodsQnaService goodsqnaService;
	@Autowired
	private ReviewService reviewService;
	
	@SuppressWarnings("unchecked")
	@RequestMapping("itemPage.do")
	public String getItemPage(ItemPageVO product, GoodsQnaVO goodsqnavo, String qnaPage, String reviewPage, Model model, HttpSession session) {
		boolean isPaging=false;
		boolean isReviewPaging=false;
		ItemPageVO getItemInfo=itempageService.getItemPage(product);
		if(getItemInfo.getGoods_detail_promotion_serial()>0) {
			getItemInfo.setGoods_detail_discountrate(getItemInfo.getGoods_detail_discountrate()+(10*getItemInfo.getGoods_detail_promotion_serial()));
		}
		String userId=(String)session.getAttribute("userId");
		int currentPage=0;
		int reviewCuPage=0;
		if(qnaPage==null || qnaPage=="") {
			currentPage=0;
			isPaging=false;
		}else {
			currentPage=Integer.valueOf(qnaPage);
			isPaging=true;
		}
		if(reviewPage==null||reviewPage=="") {
			reviewCuPage=0;
			isReviewPaging=false;
		}else {
			reviewCuPage=Integer.valueOf(reviewPage);
			isReviewPaging=true;
		}
		goodsqnavo.setStart(5*currentPage);
		int qnaCount=Integer.valueOf(goodsqnaService.getQnaCount(product.getCategory_goods_serial()));
		int reviewCount=Integer.valueOf(reviewService.getReviewCount(product.getCategory_goods_serial()));
		
		List<ItemPageVO> getCategoryItemPage=itempageService.getCategoryItemPage(product);
		List<GoodsQnaVO> GoodsQnaList=goodsqnaService.getGoodsQnaList(goodsqnavo);
		
		GoodsQnaVO reviewVO=new GoodsQnaVO();
		reviewVO.setCategory_goods_serial(product.getCategory_goods_serial());
		reviewVO.setStart(5*reviewCuPage);
		List<ReviewVO> goodsReview=reviewService.getGoodsReview(reviewVO);
		
		if(session.getAttribute("recentList")==null) {
			session.setAttribute("recentList", new ArrayList<ItemPageVO>());
		}
		
		List<ItemPageVO> recentList=(List<ItemPageVO>)session.getAttribute("recentList");
		for(ItemPageVO item:recentList) {
			if(item.getCategory_goods_serial()==product.getCategory_goods_serial()) {
				recentList.remove(item);
				break;
			}
		}
		recentList.add(0, getItemInfo);
		if(recentList.size()==4)
			recentList.remove(3);
		model.addAttribute("getCategoryItemPage", getCategoryItemPage);
		for(GoodsQnaVO qna:GoodsQnaList) {
			qna.setQna_goods_content(qna.getQna_goods_content().replace("\r\n", "ln"));
		}
		for(ReviewVO review:goodsReview) {
	         review.setReview_content(review.getReview_content().replace("\r\n", "ln"));
	      }
		model.addAttribute("reviews", goodsReview);
	      model.addAttribute("reviewPaging", reviewCount);
	      model.addAttribute("reviewCuPage",reviewCuPage);
	      model.addAttribute("isReviewPaging",isReviewPaging);
		model.addAttribute("goodsqnalist", GoodsQnaList);
		qnaCount=(qnaCount/5)+(qnaCount%5==0?0:1);
		model.addAttribute("qnaPaging", qnaCount);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("isQnaPaging", isPaging);
		
		
		CategoryFirstVO categoryRoot=sqlSession.selectOne("CategoryDAO.getCategoryRoot",product);
		CategorySecondVO categorySubRoot=sqlSession.selectOne("CategoryDAO.getCategorySubRoot", product);
		List<CategoryFirstVO> categoryFirstList=headerService.getCategoryFirst();
		List<CategorySecondVO> categorySecond=sqlSession.selectList("CategoryDAO.getCategorySecond", categoryRoot);
		List<CategoryThirdVO> categoryThird=sqlSession.selectList("CategoryDAO.getCategoryThird", categorySubRoot);
		
		model.addAttribute("categoryFirst", categoryRoot);
		model.addAttribute("categoryFirstList", categoryFirstList);
		model.addAttribute("categorySecond",categorySecond);
		model.addAttribute("categorySe", categorySubRoot);
		model.addAttribute("categoryThird", categoryThird);
		model.addAttribute("firstSerial", product.getCategory_first_serial());
		model.addAttribute("secondSerial", product.getCategory_second_serial());
		model.addAttribute("thirdSerial", product.getCategory_third_serial());
		model.addAttribute("getItemPage", getItemInfo);
		return "product/GoodsDetail";
	}
}
