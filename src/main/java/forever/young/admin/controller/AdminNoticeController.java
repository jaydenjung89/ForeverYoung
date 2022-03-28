package forever.young.admin.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import forever.young.admin.service.AdminService;
import forever.young.admin.vo.NoticeVO;

@Controller
public class AdminNoticeController {
	@Autowired
	private AdminService adminService;
	@InitBinder
    protected void initBinder(WebDataBinder binder){
        DateFormat  dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat,true));
    }

	// 관리자 공지사항 관리페이지
	@RequestMapping("admin_notice.mdo")
	public String adminNotice(NoticeVO notice, HttpSession session, Model model) {
		List<NoticeVO> NoticeList = adminService.getNoticeList(notice);
		if (NoticeList.size() > 0) {
			model.addAttribute("noticeList", NoticeList);
		}
		System.out.println(NoticeList);
		return "dashboard/notice/admin_notice";
	}

	// 공지사항 삭제
	@RequestMapping("deleteNotice.mdo")
	public String deleteNotice(NoticeVO notice) {
		System.out.println("공지사항 삭제 메서드 실행");
		int success = 0;
		success = adminService.deleteNotice(notice);
		if (success != 0) {
			return "redirect:admin_notice.mdo";
		} else {
			return "redirect:admin_notice.mdo";
		}
	}

	// 공지사항 상세 화면 이동
	@RequestMapping("updateNoticePage.mdo")
	public String updateNoticePage(Model model, NoticeVO notice) {
		model.addAttribute("getNotice", adminService.getNotice(notice));

		return "dashboard/notice/admin_noticeWrite";
	}
	
	// 공지사항 update
	@RequestMapping("updateNotice.mdo")
	public String updateNotice(Model model, NoticeVO notice) {
		adminService.updateNotice(notice);
		
		return "redirect:admin_notice.mdo";
	}

	// 공지사항 입력 화면 이동
	@RequestMapping("insertNoticePage.mdo")
	public String insertNoticePage(Model model, NoticeVO notice) {

		return "dashboard/notice/insertNotice";
	}

	// 공지사항 등록(Insert)
	@RequestMapping("insertNotice.mdo")
	public String insertNotice(NoticeVO notice) {
		adminService.insertNotice(notice);
		return "redirect:admin_notice.mdo";
	}

}
