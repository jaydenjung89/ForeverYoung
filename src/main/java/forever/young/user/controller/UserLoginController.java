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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import forever.young.email.Email;
import forever.young.email.EmailSender;
import forever.young.user.service.GoodsQnaService;
import forever.young.user.service.OrderService;
import forever.young.user.service.PersonalQnaService;
import forever.young.user.service.UserService;
import forever.young.user.service.User_order_listService;
import forever.young.user.vo.GoodsQnaVO;
import forever.young.user.vo.Pagination;
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
	
	@Autowired
   private User_order_listService user_order_listService;
	
	//?????? ??????
	@RequestMapping(value="login.do", method=RequestMethod.GET)
	public String loginGET(@ModelAttribute("userVo") UserVO userVo) {
		return "join_login/login";
	}
	
//	
//	//?????? ????
//	@RequestMapping(value="loginProc.do", method=RequestMethod.POST)
//	public String loginPOST(UserVO userVO, HttpSession httpSession, Model model, RedirectAttributes redirect) throws Exception{
//		UserVO userVo=userService.login(userVO);
//		if(userVo==null || !BCrypt.checkpw(userVO.getUser_password(), userVo.getUser_password())) {
//			System.out.println("?????? ????");
//			return "join_login/login";
//		}else {
//			model.addAttribute("user", userVo);
//			model.addAttribute("user1",userVo);
//			model.addAttribute("userId", userVO.getUser_id());
//			model.addAttribute("userName", userVo.getUser_name());
//			model.addAttribute("userPoint", orderService.getUserDetails(userVO.getUser_id()).getUser_point());
//			model.addAttribute("userMember", orderService.getUserDetails(userVO.getUser_id()).getUser_membership_name());
//			System.out.println("?????? ????");
//			redirectedUrl("#");
//			return "redirect:main.do";
//		}
//	}
//	
	
	//?????? ????
   @RequestMapping(value="loginProc.do", method=RequestMethod.POST,produces="html/text; charset=utf-8")
   @ResponseBody
   public String loginPOST(UserVO userVO, HttpSession httpSession, HttpServletRequest request,Model model, RedirectAttributes redirect) throws Exception{
      String userID = request.getParameter("userid");
      userVO.setUser_id(userID);
      List<UserVO> getUser = userService.getTotal(userVO);
      String a = "";
      for(int i =0; i < getUser.size(); i++){
         
         if(userID .equals(getUser.get(i).getUser_id()) ) {
            UserVO userVo=userService.login(userVO);
            model.addAttribute("user", userVo);
            model.addAttribute("user1",userVo);
            //model.addAttribute("userId", userVO.getUser_id());
            model.addAttribute("userId", userVo.getUser_id());
            model.addAttribute("userName", userVo.getUser_name());
            model.addAttribute("userPoint", orderService.getUserDetails(userVO.getUser_id()).getUser_point());
            model.addAttribute("userMember", orderService.getUserDetails(userVO.getUser_id()).getUser_membership_name());
            System.out.println("?????? ????");
            a = "true";
            System.out.println(a);
            break;
         }else {

            a ="false";
            
            
         }
      }
      return a;
   }
	
	//???????? ????
	@RequestMapping("logoutProc.do")
	public String logout(SessionStatus sessionStatus, RedirectAttributes redirect) {
		userService.logout(sessionStatus);
		System.out.println("????????????");
		redirectedUrl("#");
		return "redirect:main.do";
	}
	// ?????? ??????
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

	//?????????? ??????
	@RequestMapping(value="MyPageMain.do", method=RequestMethod.GET)
	public String myPageGET(@ModelAttribute("user") UserVO userVo, Model model, GoodsQnaVO vo,PersonalQnaVO vo2,HttpSession session, @RequestParam(required=false, defaultValue="1") int page
	         , @RequestParam(required=false, defaultValue="1") int range) throws Exception {
		//System.out.println("?????????? ????");
		String userId = (String) session.getAttribute("userId");
		vo.setUser_id(userId);
		vo2.setUser_id(userId);
		
		int listCnt=user_order_listService.getBoardListCnt();
	      
	    Pagination pagination = new Pagination();
	      
	    pagination.pageInfo(page, range, listCnt);
	      
		model.addAttribute("userPoint", orderService.getUserDetails(userVo.getUser_id()).getUser_point());
		model.addAttribute("userMember", orderService.getUserDetails(userVo.getUser_id()).getUser_membership_name());
		model.addAttribute("order", user_order_listService.getBoard(userId, pagination));
		
		//?????????? ???? ?????? 
		List<GoodsQnaVO> vo1 =  goodsService.getGoodsQnaList1(vo);
		model.addAttribute("vo1", vo1);
		System.out.println(vo1);
		
		//?????????? QnA
		List<PersonalQnaVO> vo3 = personalqnaService.getPersonalQnaList1(vo2);
		model.addAttribute("vo3", vo3);
		System.out.println(vo3);
		
		return "myPage/MyPageMain";
		
	}
	
	//??????????
	/*
	 * @RequestMapping(value="main.do", method=RequestMethod.GET) public String
	 * mainPageGET(UserVO userVo) { //System.out.println("?????????? ????"); return
	 * "main/main"; }
	 */
	//??????????
	@RequestMapping(value="coupon.do", method=RequestMethod.GET)
	public String couponPageGET(UserVO userVo) {
		//System.out.println("?????????? ????");
		return "membership&coupon/coupon";
	}
	//?????? ??????
	@RequestMapping(value="membership.do", method=RequestMethod.GET)
	public String memberShipPageGET(UserVO userVo) {
	//	System.out.println("???????????? ????");
		return "membership&coupon/membership";
	}
	
	//???????? ??????
	@RequestMapping(value="company.do", method=RequestMethod.GET)
	public String companyPageGET(UserVO userVo) {
		//System.out.println("???????? ?????? ????");
		return "default/company";
	}
	
	//???????? ??????
	@RequestMapping(value="getOrderForm.do", method=RequestMethod.GET)
	public String getOrderFormPageGET(UserVO userVo) {
		//System.out.println("???????? ?????? ????");
		return "myPage/getOrderForm.do";
	}
	//?????????? ??????
	@RequestMapping(value="MyProfile.do", method=RequestMethod.GET)
	public String MyProfilePageGET(UserVO userVo) {
		//System.out.println("?????????? ?????? ????");
		return "myPage/MyProfile";
	}
	//???????? ??????
	@RequestMapping(value="order&delivery.do", method=RequestMethod.GET)
	public String orderDeliveryPageGET(UserVO userVo) {
		//System.out.println("???????? ?????? ????");
		return "myPage/orderList";
	}

	

	
	
	// ?????? ????(???? ?????? ????)
	   @RequestMapping(value = "idFind.do", method = RequestMethod.GET)
	   public String findPage(Model model) {
	      model.addAttribute("type", "get");
	      return "join_login/idFin";
	   }

	   // ?????? ????(?????? ???? ????????)
	   @RequestMapping(value = "idFindProc.do", method = RequestMethod.POST)
	   public String findIdProc(UserVO user, Model model) {
	      String id = userService.idFind(user);
	      System.out.println("?????? ??????:" + id);
	      model.addAttribute("findId", id);
	      model.addAttribute("type", "post");
	      return "join_login/idFin";
	   }

	   // ???????? ????(???? ??????????)
	   @GetMapping("pwFind.do")
	   public String pwFindPage(Model model) {
	      model.addAttribute("type", "get");
	      return "join_login/pwFind";
	   }

	   @Autowired
	   private JavaMailSender mailSender;

	   // ???????? ????(???????? ????)
	   @PostMapping("pwFindProc.do")
	   public String pwFind(UserVO user, Model model, HttpServletRequest request) {
	      //?????????? ?????? ???? ?????? ????????
		   String id = user.getUser_id();
		  System.out.println("id: " + id);
	      String getUserEmail = userService.pwFind(user);
	     System.out.println("email: " + getUserEmail);
	      //getUserEmail?? ????!
	      if(getUserEmail != null) {
	         UserVO userInfo = userService.getUserInfo(user.getUser_id());
	         //userInfo?? ???? ??????,???????? ???? ?????? ?????? ????
	         System.out.println(userInfo);
	         if(userInfo == null) {
	            model.addAttribute("sendPassword",false);
	            model.addAttribute("type", "post");
	            return "join_login/pwFind";
	         }
	         System.out.println("?????? user???? : " + userInfo);
	         //userInfo ?? null?? ????!
	         if(userInfo != null) {
	            //?????? ???????? ?????? ?????? ????????.
	            //?????? ?? ????
	            String pw = ""; 
	            for (int i = 0; i < 12; i++) {
	               pw += (char) ((Math.random() * 26) + 97);
	            } 
	            String encodePw = ""; //?????? ?? ????
	            encodePw = bcryptPasswordEncoder.encode(pw);
	            user.setUser_password(encodePw);
	            
	            email.setContent("??????????. ??????????????. ?? ?????????? " + pw + "??????.");
	            email.setReceiver(getUserEmail);
	            email.setSubject(getUserEmail + "???? ???????? ???? ??????????.");
	            try {
	               MimeMessage msg = mailSender.createMimeMessage();
	               MimeMessageHelper messageHelper = new MimeMessageHelper(msg, true,"UTF-8");
	                  
	               messageHelper.setSubject(email.getSubject());
	               messageHelper.setText(email.getContent());
	               messageHelper.setTo(email.getReceiver());
	               messageHelper.setFrom("kkmm0298@gmail.com"); //?????? ???? ????
	               msg.setRecipients(MimeMessage.RecipientType.TO, InternetAddress.parse(email.getReceiver()));
	               mailSender.send(msg);
	               model.addAttribute("sendEmailSuccess",true);
	                  
	               userService.newPw(user);
	                  
	            }catch(MessagingException e) {
	               System.out.println("?????? ????????");
	               e.printStackTrace();
	               model.addAttribute("sendEmailSuccess", false);
	               model.addAttribute("sendPassword",true);
	               model.addAttribute("type","post");
	               return "join_login/pwFind";
	            }   
	            System.out.println("?? ???????? ?????? ????");
	            System.out.println("==============================");
	            System.out.println(user);
	            model.addAttribute("userEmail", user.getUser_email());
	            model.addAttribute("sendPassword", true);
	            model.addAttribute("type", "post");
	            
	         } //userInfo ?? null?? ????!
	      }//getUserEmail?? ????! 
	      else {
	         //getUserEmail????
	         System.out.println("???? ???????? ???? ????");
	         model.addAttribute("sendPassword",false);
	      }
	      
	      return "join_login/pwFind";
	   }
}