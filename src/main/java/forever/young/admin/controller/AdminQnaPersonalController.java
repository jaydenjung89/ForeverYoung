package forever.young.admin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import forever.young.admin.service.AdminService;
import forever.young.admin.vo.AdminVO;
import forever.young.admin.vo.QnaPersonalVO;
import forever.young.sms.MessageService;
import forever.young.user.vo.PersonalQnaVO;
import forever.young.user.vo.UserVO;

@Controller
public class AdminQnaPersonalController {
	@Autowired
	private AdminService adminService;

	// 관리자 1:1문의 관리페이지
	@RequestMapping("admin_qnaPersonal.mdo")
	public String adminQnaPersonal(QnaPersonalVO qna, HttpSession session, Model model) {
		List<QnaPersonalVO> qnaPersonalList = adminService.getQnaPersonalList(qna);
		if (qnaPersonalList.size() > 0) {
			model.addAttribute("qnaPersonalList", qnaPersonalList);
		}
		System.out.println(qnaPersonalList);
		return "dashboard/qnaPersonal/qnaPersonal";
	}

	// 1:1문의 세부사항
	@RequestMapping("admin_qnaPersonalWrite.mdo")
	public String qnaPersonalWrite(QnaPersonalVO qna, Model model) {
		QnaPersonalVO qnaPersonal = adminService.getQnaPersonalWrite(qna);
		model.addAttribute("qnaPersonal", qnaPersonal);
		System.out.println(qnaPersonal);
		return "dashboard/qnaPersonal/qnaPersonalWrite";
	}

	// 관리자 -1:1문의 답변작성(update)
	@RequestMapping(value="admin_qnaPersonalUpdate.mdo")
	public String qnaPersonalUpdate(QnaPersonalVO qna) {
		int success = 0;
		System.out.println(qna.getQna_personal_answer_title());
		success = adminService.qnaPersonalUpdate(qna);
		System.out.println("sms발송");
		MessageService sms = new MessageService();

		sms.sendMessage2(qna.getQna_personal_phone());
		if (success != 0) {
			return "redirect:admin_qnaPersonal.mdo";
		} else {
			return "redirect:admin_qnaPersonalWrite.mdo";
		}
	}

}
