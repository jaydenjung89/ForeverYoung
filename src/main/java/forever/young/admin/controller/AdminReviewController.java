package forever.young.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import forever.young.admin.service.AdminService;
import forever.young.admin.vo.AdminReviewVO;

@Controller
public class AdminReviewController {
	@Autowired
	private AdminService service;
	
	//包府磊 府轰 乐绰 惑前
	@RequestMapping("/getReviewGoodsName.mdo")
	public String getReviewGoodsName(AdminReviewVO review, Model model)throws Exception{
		model.addAttribute("reviewgoodsname", service.getReviewGoodsName(review));
		
		return "review/reviewGoodsName";
	}
	
	//包府磊 府轰 郴侩
	@RequestMapping("/getReviewContent.mdo")
	public String getReviewContent(AdminReviewVO review, Model model)throws Exception{
		model.addAttribute("review", service.getReviewContent(review));
		
		return "review/reviewContent";
	}
	
	//包府磊 府轰 昏力
	@RequestMapping("deleteReview.mdo")
	public String deleteReview(AdminReviewVO review) throws Exception {
		int delete = 0;
		delete = service.deleteReview(review);
		
		if(delete != 0 ) {
			return "redirect:getReviewGoodsName.mdo";
		}else {
			return "redirect:getReviewGoodsName.mdo";
		}
	}
//	
//	//包府磊 府轰 府胶飘
//	@RequestMapping("getReviewList.mdo")
//	public String getReviewList(AdminReviewVO review, Model model)throws Exception{
//		model.addAttribute("reviewList", service.getReviewList(review));
//		
//		return "review/admin_reviewList";
//	}
}
