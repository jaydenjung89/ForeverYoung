package forever.young.admin.controller;

import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import forever.young.admin.service.AdminService;
import forever.young.admin.vo.AdminUserVO;
import forever.young.admin.vo.AdminVO;
import forever.young.email.Email;

@Controller
@SessionAttributes({ "user_id", "user_name" })
public class AdminMemberController {
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private Email email;

	// 관리자 로그인페이지
//	@RequestMapping("member.mdo")
//	public String gomember() {
//		return "dashboard/member";
//	}

	// 유저목록 리스트
	@RequestMapping("admin_userList.mdo")
	public String adminuserList(AdminUserVO adminUser, HttpSession session, Model model) {
		model.addAttribute("userList", adminService.userList(adminUser));
		List<AdminUserVO> userList = adminService.userList(adminUser);
		System.out.println(userList);
		return "dashboard/member";
	}

	// 관리자목록 리스트
	@RequestMapping("admin_List.mdo")
	public String adminList(AdminVO admin, HttpSession session, Model model) {
		model.addAttribute("adminList", adminService.adminList(admin));
		List<AdminVO> adminList = adminService.adminList(admin);
		System.out.println(adminList);
		return "dashboard/admin";
	}

	// 회원 삭제
	@RequestMapping("deleteUser.mdo")
	public String deleteUser(AdminUserVO user) {
		int success = 0;
		success = adminService.deleteUser(user);
		if (success != 0) {
			return "redirect:admin_userList.mdo";
		} else {
			return "redirect:admin_userList.mdo";
		}
	}

	// 관리자 삭제
	@RequestMapping("deleteAdmin.mdo")
	public String deleteAdmin(AdminVO admin) {
		int success = 0;
		success = adminService.deleteAdmin(admin);
		if (success != 0) {
			return "redirect:admin_adminList.mdo";
		} else {
			return "redirect:admin_adminList.mdo";
		}
	}
	//회원 수정
	@RequestMapping("updateUser.mdo")
	@ResponseBody
	public int updateUser(AdminUserVO user, HttpServletRequest request, Model model) {
		String user_id = request.getParameter("user_id");
		String user_status = request.getParameter("user_status");
		int status = Integer.parseInt(user_status);
		
		String id = user.getUser_id();
		
		String getUserEmail = adminService.getMail(user);
		int userStatus = adminService.getUserStatus(user);
		
				
		if(getUserEmail !=null) {
			if(userStatus == 0) {
				
				email.setContent("안녕하세요. 포에버영입니다. 고객님께서는 6개월 동안 미접속으로 인하여 아이디가 휴면으로 전환 될 예정입니다. 감사합니다.");
				email.setReceiver(getUserEmail);
				email.setSubject(getUserEmail+"님의 계정이 휴면 계정으로 전환 예정입니다.");
				try {
					MimeMessage msg=mailSender.createMimeMessage();
					MimeMessageHelper messageHelper=new MimeMessageHelper(msg, true, "UTF-8");
					
					messageHelper.setSubject(email.getSubject());
					messageHelper.setText(email.getContent());
					messageHelper.setTo(email.getReceiver());
					messageHelper.setFrom("kkmm0298@gmail.com");
					msg.setRecipients(MimeMessage.RecipientType.TO, InternetAddress.parse(email.getReceiver()));
					mailSender.send(msg);
				}catch(MessagingException e) {
					e.printStackTrace();
				}
			}


		}
		int success = 0;
		success = adminService.updateUser(user);
		
		return success;
	}

}
