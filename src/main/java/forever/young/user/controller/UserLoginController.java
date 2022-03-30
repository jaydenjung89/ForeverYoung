package forever.young.user.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import forever.young.email.Email;
import forever.young.email.EmailSender;
import forever.young.user.service.GoodsQnaService;
import forever.young.user.service.OrderService;
import forever.young.user.service.PersonalQnaService;
import forever.young.user.service.UserService;
import forever.young.user.vo.GoodsQnaVO;
import forever.young.user.vo.PersonalQnaVO;
import forever.young.user.vo.UserVO;

@Controller
//@SessionAttributes({"userId", "userName"})
@SessionAttributes({"user","userId", "userName", "userPoint","userMember"})
public class UserLoginController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private Email email;
	
	@Autowired
	private EmailSender emailSender;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private GoodsQnaService goodsService;
	
	@Autowired
	private PersonalQnaService personalqnaService;
	
	//로그인 페이지
	@RequestMapping(value="login.do", method=RequestMethod.GET)
	public String loginGET(@ModelAttribute("userVo") UserVO userVo) {
		return "join_login/login";
	}
	//로그인 처리
	@RequestMapping(value="loginProc.do", method=RequestMethod.POST)
	public String loginPOST(UserVO userVO, HttpSession httpSession, Model model, RedirectAttributes redirect) throws Exception{
		UserVO userVo=userService.login(userVO);
		if(userVo==null || !BCrypt.checkpw(userVO.getUser_password(), userVo.getUser_password())) {
			System.out.println("로그인 실패");
			return "join_login/login";
		}else {
			model.addAttribute("user", userVo);
			model.addAttribute("user1",userVo);
			model.addAttribute("userId", userVO.getUser_id());
			model.addAttribute("userName", userVo.getUser_name());
			model.addAttribute("userPoint", orderService.getUserDetails(userVO.getUser_id()).getUser_point());
			model.addAttribute("userMember", orderService.getUserDetails(userVO.getUser_id()).getUser_membership_name());
			System.out.println("로그인 성공");
			redirectedUrl("#");
			return "redirect:main.do";
		}
	}
	//로그아웃 처리
	@RequestMapping("logoutProc.do")
	public String logout(SessionStatus sessionStatus, RedirectAttributes redirect) {
		userService.logout(sessionStatus);
		System.out.println("로그아웃성공");
		redirectedUrl("#");
		return "redirect:main.do";
	}
	// 카카오 로그인
	   @RequestMapping("kakaoLogin.do")
	   public String KakaoLogin(String kakaoId, String kakaoEmail, String kakaoNickName, Model model,UserVO userVO) {
	      UserVO user = new UserVO();
	      user.setUser_email(kakaoEmail);
	      user.setUser_id(kakaoEmail);
	      UserVO userInfo = userService.loginGetUser(user); 
	      if (userInfo == null) {
	         model.addAttribute("KakaoJoin", true);
	         model.addAttribute("kakaoId", kakaoEmail);
	         model.addAttribute("kakaoEmail", kakaoEmail);
	         model.addAttribute("kakaoNickName", kakaoNickName);
	         return "join_login/join";
	      } else {
	    	  model.addAttribute("user", user);
				model.addAttribute("user1",user);
				model.addAttribute("userId", userInfo.getUser_id());
				model.addAttribute("userName", userInfo.getUser_name());
	         return "redirect:main.do";
	      }
	   }

	//마이페이지 페이지
	@RequestMapping(value="MyPageMain.do", method=RequestMethod.GET)
	public String myPageGET(@ModelAttribute("user") UserVO userVo, Model model, GoodsQnaVO vo,PersonalQnaVO vo2,HttpSession session) {
		//System.out.println("마이페이지 입장");
		String userId = (String) session.getAttribute("userId");
		vo.setUser_id(userId);
		vo2.setUser_id(userId);
		model.addAttribute("userPoint", orderService.getUserDetails(userVo.getUser_id()).getUser_point());
		model.addAttribute("userMember", orderService.getUserDetails(userVo.getUser_id()).getUser_membership_name());
		
		//마이페이지 상품 리스트 
		List<GoodsQnaVO> vo1 =  goodsService.getGoodsQnaList1(vo);
		model.addAttribute("vo1", vo1);
		System.out.println(vo1);
		
		//마이페이지 QnA
		List<PersonalQnaVO> vo3 = personalqnaService.getPersonalQnaList1(vo2);
		model.addAttribute("vo3", vo3);
		System.out.println(vo3);
		
		return "myPage/MyPageMain";
		
	}
	
	//메인페이지
	/*
	 * @RequestMapping(value="main.do", method=RequestMethod.GET) public String
	 * mainPageGET(UserVO userVo) { //System.out.println("메인페이지 입장"); return
	 * "main/main"; }
	 */
	//쿠폰페이지
	@RequestMapping(value="coupon.do", method=RequestMethod.GET)
	public String couponPageGET(UserVO userVo) {
		//System.out.println("쿠폰페이지 입장");
		return "membership&coupon/coupon";
	}
	//멤버쉽 페이지
	@RequestMapping(value="membership.do", method=RequestMethod.GET)
	public String memberShipPageGET(UserVO userVo) {
	//	System.out.println("멤버쉽페이지 입장");
		return "membership&coupon/membership";
	}
	
	//회사소개 페이지
	@RequestMapping(value="company.do", method=RequestMethod.GET)
	public String companyPageGET(UserVO userVo) {
		//System.out.println("회사소개 페이지 입장");
		return "default/company";
	}
	
	//주문결제 페이지
	@RequestMapping(value="getOrderForm.do", method=RequestMethod.GET)
	public String getOrderFormPageGET(UserVO userVo) {
		//System.out.println("주문결제 페이지 입장");
		return "myPage/getOrderForm.do";
	}
	//마이프로필 페이지
	@RequestMapping(value="MyProfile.do", method=RequestMethod.GET)
	public String MyProfilePageGET(UserVO userVo) {
		//System.out.println("마이프로필 페이지 입장");
		return "myPage/MyProfile";
	}
	//주문배송 페이지
	@RequestMapping(value="order&delivery.do", method=RequestMethod.GET)
	public String orderDeliveryPageGET(UserVO userVo) {
		//System.out.println("주문배송 페이지 입장");
		return "myPage/orderList";
	}

	

	
	
	// 아이디 찾기(단순 페이지 이동)
	   @RequestMapping(value = "idFind.do", method = RequestMethod.GET)
	   public String findPage(Model model) {
	      model.addAttribute("type", "get");
	      return "join_login/idFin";
	   }

	   // 아이디 찾기(아이디 찾기 과정처리)
	   @RequestMapping(value = "idFindProc.do", method = RequestMethod.POST)
	   public String findIdProc(UserVO user, Model model) {
	      String id = userService.idFind(user);
	      System.out.println("사용자 아이디:" + id);
	      model.addAttribute("findId", id);
	      model.addAttribute("type", "post");
	      return "join_login/idFin";
	   }

	   // 비밀번호 찾기(단순 페이지이동)
	   @GetMapping("pwFind.do")
	   public String pwFindPage(Model model) {
	      model.addAttribute("type", "get");
	      return "join_login/pwFind";
	   }

	   @Autowired
	   private JavaMailSender mailSender;

	   // 비밀번호 찾기(비번찾기 처리)
	   @PostMapping("pwFindProc.do")
	   public String pwFind(UserVO user, Model model, HttpServletRequest request) {
	      //비밀번호를 변경할 사람 이메일 뽑아오기
		   String id = user.getUser_id();
		   System.out.println("id: " + id);
	      String getUserEmail = userService.pwFind(user);
	      System.out.println("getUserEmail :" + getUserEmail);
	      //getUserEmail이 있어!
	      if(getUserEmail != null) {
	         UserVO userInfo = userService.getUserInfo(user.getUser_id());
	         //userInfo에 해당 이메일,아이디의 유저 정보가 들어가 있음
	         System.out.println(userInfo);
	         if(userInfo == null) {
	            model.addAttribute("sendPassword",false);
	            model.addAttribute("type", "post");
	            return "join_login/pwFind";
	         }
	         System.out.println("가져온 user정보 : " + userInfo);
	         //userInfo 가 null이 아님!
	         if(userInfo != null) {
	            //여기에 이메일에 들어갈 내용을 입력한다.
	            //인코딩 전 비번
	            String pw = ""; 
	            for (int i = 0; i < 12; i++) {
	               pw += (char) ((Math.random() * 26) + 97);
	            } 
	            String encodePw = ""; //인코딩 후 비번
	            encodePw = bcryptPasswordEncoder.encode(pw);
	            user.setUser_password(encodePw);
	            
	            email.setContent("안녕하세요. 포에버영입니다. 새 비밀번호는 " + pw + "입니다.");
	            email.setReceiver(getUserEmail);
	            email.setSubject(getUserEmail + "님의 비밀번호 찾기 메일입니다.");
	            try {
	               MimeMessage msg = mailSender.createMimeMessage();
	               MimeMessageHelper messageHelper = new MimeMessageHelper(msg, true,"UTF-8");
	                  
	               messageHelper.setSubject(email.getSubject());
	               messageHelper.setText(email.getContent());
	               messageHelper.setTo(email.getReceiver());
	               messageHelper.setFrom("kkmm0298@gmail.com"); //보내는 이의 주소
	               msg.setRecipients(MimeMessage.RecipientType.TO, InternetAddress.parse(email.getReceiver()));
	               mailSender.send(msg);
	               model.addAttribute("sendEmailSuccess",true);
	                  
	               userService.newPw(user);
	                  
	            }catch(MessagingException e) {
	               System.out.println("이메일 예외처리");
	               e.printStackTrace();
	               model.addAttribute("sendEmailSuccess", false);
	               model.addAttribute("sendPassword",true);
	               model.addAttribute("type","post");
	               return "join_login/pwFind";
	            }   
	            System.out.println("새 비밀번호 보내기 성공");
	            System.out.println("==============================");
	            System.out.println(user);
	            model.addAttribute("userEmail", user.getUser_email());
	            model.addAttribute("sendPassword", true);
	            model.addAttribute("type", "post");
	            
	         } //userInfo 가 null이 아님!
	      }//getUserEmail이 있어! 
	      else {
	         //getUserEmail없어
	         System.out.println("해당 이메일을 찾지 못함");
	         model.addAttribute("sendPassword",false);
	      }
	      
	      return "join_login/pwFind";
	   }
}