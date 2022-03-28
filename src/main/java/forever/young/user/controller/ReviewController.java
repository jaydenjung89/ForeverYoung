package forever.young.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import forever.young.user.service.ReviewService;
import forever.young.user.vo.ReviewVO;
import forever.young.user.vo.User_order_listVO;

@Controller
@SessionAttributes({ "loginUser", "user_id", "user_name" })
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
	//후기작성 페이지
	@GetMapping("reviewWrite.do")
	public String reviewPage(User_order_listVO vo, ReviewVO ro, Model model) {
		model.addAttribute("goods", reviewService.reviewWrite(vo.getOrder_details_serial()));
		model.addAttribute("update", reviewService.updateReviewData(ro));
		
		
		
//		if(reviewService.updateReviewData(ro) != null) {
//	 		System.out.println("update: " + reviewService.updateReviewData(ro));
//		}
		return "product/reviewWrite";
	}
	//리뷰작성처리
	@PostMapping("reviewProc.do")
	public String reviewInsert(@RequestParam(value="review_serial", required=false, defaultValue="0")int review_serial, HttpServletRequest requet, ReviewVO vo, RedirectAttributes redirect) {
		int success = 0;
		
		success = reviewService.insertReview(vo);
		
		
		redirect.addAttribute("category_goods_serial", vo.getCategory_goods_serial());
		
		return "redirect:itemPage.do";
	}
	
	@GetMapping("myPageReview.do")
	public String reviewMyPage(HttpSession session, ReviewVO ro, User_order_listVO lvo,Model model) {
		String user_id = (String) session.getAttribute("userId");
		Integer count = reviewService.count(user_id) == null ? 0 : reviewService.count(user_id);
		Integer rcount = reviewService.reviewCount(user_id) == null ? 0: reviewService.reviewCount(user_id);
		
		model.addAttribute("reviewComplete", reviewService.reviewCompleteList(user_id));
		model.addAttribute("review", reviewService.reviewList(user_id));
		model.addAttribute("count", count);
		model.addAttribute("rcount", rcount);
		
		return "myPage/myPage_review";
	}
	@PostMapping("reviewUpdate.do")
	public String reviewUpdate(@RequestParam(value="review_serial", required=false, defaultValue="0")int review_serial, HttpServletRequest requet, ReviewVO vo, RedirectAttributes redirect) {
		int success = 0;
		
		if(review_serial != 0) {
			vo.setReview_serial(review_serial);
			reviewService.updateReview(vo);
		}
		redirect.addAttribute("category_goods_serial", vo.getCategory_goods_serial());
		
		return "redirect:myPageReview.do";
	}
	
	@RequestMapping("reviewDelete.do")
	@ResponseBody
	public int reviewDelete(@RequestParam(value="review_serial2", required=false, defaultValue="0")int review_serial, ReviewVO vo) {
		int success = reviewService.deleteReview(review_serial);
		
		return success;
		//return "myPage/myPage_review";
	}
	
	

}
