package forever.young.user.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import forever.young.admin.service.AdminService;
import forever.young.admin.vo.AdminBannerVO;
import forever.young.user.service.ReviewService;
import forever.young.user.vo.ReviewVO;
import forever.young.user.vo.User_order_listVO;
import s3.AwsS3;

@Controller
@SessionAttributes({ "loginUser", "user_id", "user_name" })
public class ReviewController {
	
private String url = "https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/";
	//DB
	@Autowired
	private AwsS3 awsS3;
	
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
	public String reviewInsert(@RequestParam(value="review_serial", required=false, defaultValue="0")int review_serial, HttpServletRequest requet, ReviewVO vo, RedirectAttributes redirect, MultipartFile uploadFile) {
		
		try {
			
			String key = "review1/"+uploadFile.getOriginalFilename();
			InputStream is = uploadFile.getInputStream();
			String contentType = uploadFile.getContentType();
			long contentLength = uploadFile.getSize();
			awsS3.upload(is, key, contentType, contentLength);
			
			int success = 0;
			
			vo.setReview_image_main(url + key);
			success = reviewService.insertReview(vo);
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		
		//int success = 0;
		
		//success = reviewService.insertReview(vo);
		
		
		redirect.addAttribute("category_goods_serial", vo.getCategory_goods_serial());
		
		return "redirect:myPageReview.do";
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
	public String reviewUpdate(@RequestParam(value="review_serial", required=false, defaultValue="0")int review_serial, HttpServletRequest requet, ReviewVO vo, RedirectAttributes redirect, MultipartFile uploadFile) {
		if(uploadFile.getSize() != 0) {
			//교체하고 싶은 이미지가 있을 경우 0이 아니므로 s3에 있는 이미지를 삭제
			vo = reviewService.updateReviewData(vo);
			String deleteKey = vo.getReview_image_main().substring(49);
			awsS3.delete(deleteKey);
			
			System.out.println(deleteKey);
			
			//새로운 이미지를 s3에 등록
			try {
				String key = "review1/"+uploadFile.getOriginalFilename();
				InputStream is = uploadFile.getInputStream();
				String contentType = uploadFile.getContentType();
				long contentLength = uploadFile.getSize();
				awsS3.upload(is, key, contentType, contentLength);
				
				vo.setReview_image_main(url + key);
				
				System.out.println(vo.getReview_image_main());
				
			}catch(IOException e) {
				e.printStackTrace();
			}
			
			//교체하고싶은 이미지가 있을 경우 이미지를 먼저 지우고
			//새로운 이미지를 등록한 후에 새로운 이미지 경로를 포함하여 db에 저장
			int success = 0;
			if(review_serial != 0) {
				vo.setReview_serial(review_serial);
				success = reviewService.updateReview(vo);
				
				System.out.println("success : " + success);
			}
			
			
			if(success != 0) {
				return "redirect:myPageReview.do";
			}else {
				return "redirect:reviewWrite.do";
			}
		}else {
			int success = 0;
			success = reviewService.updateReview(vo);
			
			if(success != 0) {
				return "redirect:myPageReview.do";
			}else {
				return "redirect:reviewWrite.do";
			}
		}
	}
//		
//		int success = 0;
//		
//		if(review_serial != 0) {
//			vo.setReview_serial(review_serial);
//			reviewService.updateReview(vo);
//		}
//		redirect.addAttribute("category_goods_serial", vo.getCategory_goods_serial());
//		
//		return "redirect:myPageReview.do";
//	}
	
	@RequestMapping("reviewDelete.do")
	@ResponseBody
	public int reviewDelete(@RequestParam(value="review_serial2", required=false, defaultValue="0")int review_serial, ReviewVO vo) {
		int success = reviewService.deleteReview(review_serial);
		
		return success;
		//return "myPage/myPage_review";
	}
	
	

}
