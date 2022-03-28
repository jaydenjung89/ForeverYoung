package forever.young.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import forever.young.admin.service.AdminService;
import forever.young.admin.vo.AdminFaqVO;

@Controller
public class AdminFaqController {
	@Autowired
	private AdminService adminService;
	
	

	// 관리자 FAQ 관리페이지
	@RequestMapping("admin_faq.mdo")
	public String adminFaq(Model model, AdminFaqVO faq) {
		List<AdminFaqVO> faqList = adminService.getFaqList(faq);
		if (faqList.size() > 0) {
			model.addAttribute("faqList", faqList);
		}
	
		return "dashboard/faq/admin_faq";
	}

	// FAQ 삭제
	@RequestMapping("deleteFaq.mdo")
	public String deleteNotice(AdminFaqVO faq) {
		System.out.println("FAQ 삭제 메서드 실행");
		int success = 0;
		success = adminService.deleteFaq(faq);
		if (success != 0) {
			return "redirect:admin_faq.mdo";
		} else {
			return "redirect:admin_faq.mdo";
		}
	}

	// FAQ 입력 화면 이동
	@RequestMapping("insertFaqPage.mdo")
	public String insertFaqPage(Model model, AdminFaqVO faq) {

		return "dashboard/faq/insertFaq";
	}

	// FAQ 등록(Insert)
	@RequestMapping(value="insertFaq.mdo")
	public String insertFaq(AdminFaqVO faq) {
		adminService.insertFaq(faq);
		
		return "redirect:admin_faq.mdo";
	}

	// FAQ 수정 화면 이동
	@RequestMapping("updateFaqPage.mdo")
	public String updateFaqPage(Model model, AdminFaqVO faq) {
		model.addAttribute("getFaq", adminService.getFaq(faq));
		return "dashboard/faq/admin_faqWrite";
	}

	// FAQ update
	@RequestMapping("updateFaq.mdo")
	public String updateFaq(Model model, AdminFaqVO faq) {
		adminService.updateFaq(faq);

		return "redirect:admin_faq.mdo";
	}

}
