package forever.young.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import forever.young.user.service.FaqService;
import forever.young.user.vo.FaqVO;
import forever.young.user.vo.Pagination;

@Controller
public class FaqController {
	@Autowired
	private FaqService faqService;
	
	@RequestMapping(value="FAQ.do", method=RequestMethod.GET)
	public String customercenterFaq(FaqVO faqVO, Model model, @RequestParam(required=false, defaultValue="1")int page,@RequestParam(required=false, defaultValue="1")int range ) {
		
		int listCnt = faqService.getFaqListCnt();
	
		Pagination pagination = new Pagination();
		
		pagination.pageInfo(page, range, listCnt);
		model.addAttribute("pagination", pagination);
		List<FaqVO> getFaqList = faqService.getfaqList(pagination);
	
		model.addAttribute("faqList", getFaqList);
		
		
		return "customercenter/FAQ";
		
	}
	
	

}
