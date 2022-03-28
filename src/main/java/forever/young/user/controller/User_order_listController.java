package forever.young.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import forever.young.user.service.OrderService;
import forever.young.user.service.User_order_listService;
import forever.young.user.vo.Pagination;
import forever.young.user.vo.ShippingVO;
import forever.young.user.vo.UserVO;
import forever.young.user.vo.User_order_listVO;

@SessionAttributes({"userMember","userPoint"})
@Controller
public class User_order_listController {
	@Autowired
	private User_order_listService user_order_listService;
	@Autowired
	private OrderService orderService;
	
	@RequestMapping("order.do")
	public String order(HttpSession session, User_order_listVO vo, Model model, UserVO userVO
			, @RequestParam(required=false, defaultValue="1") int page
			, @RequestParam(required=false, defaultValue="1") int range)throws Exception{
		String user_id=(String)session.getAttribute("userId");
		int listCnt=user_order_listService.getBoardListCnt();
		
		Pagination pagination=new Pagination();
		
		pagination.pageInfo(page, range, listCnt);
		
		model.addAttribute("pagination", pagination);
		model.addAttribute("order", user_order_listService.getBoard(user_id, pagination));
		model.addAttribute("userPoint", orderService.getUserDetails(user_id).getUser_point());
		model.addAttribute("userMember", orderService.getUserDetails(user_id).getUser_membership_name());
		return "myPage/orderList";
	}
	
	@RequestMapping("order_detail.do")
	   public String order2(HttpServletRequest request, HttpSession session, ShippingVO svo, User_order_listVO vo, Model model)throws Exception{
	     String user_id=(String)session.getAttribute("userId");
	     model.addAttribute("shipping", user_order_listService.getShipping(svo));
	      model.addAttribute("detail", user_order_listService.getDetail(vo));
	      model.addAttribute("dp", user_order_listService.dcPrice(svo.getOrder_merchant_serial()));
	      model.addAttribute("op", user_order_listService.oldPrice(svo.getOrder_merchant_serial()));
	      model.addAttribute("point", user_order_listService.point(svo.getOrder_merchant_serial()));
	      model.addAttribute("orderTime", user_order_listService.getDate(vo));
	      model.addAttribute("userPoint", orderService.getUserDetails(user_id).getUser_point());
			model.addAttribute("userMember", orderService.getUserDetails(user_id).getUser_membership_name());
	      
	      return "myPage/orderListDetail";
	   }
	   
	   /* 주문 취소 버튼누를때 보일 화면*/
	   @RequestMapping("order_cancel.do")
	   public String orderCancel(HttpServletRequest request, HttpSession session, ShippingVO svo, User_order_listVO vo, Model model) throws Exception {
	      String user_id = (String) session.getAttribute("userId");
	      model.addAttribute("shipping", user_order_listService.getShipping(svo));
	         model.addAttribute("detail", user_order_listService.getDetail(vo));
	         model.addAttribute("dp", user_order_listService.dcPrice(svo.getOrder_merchant_serial()));
	         model.addAttribute("op", user_order_listService.oldPrice(svo.getOrder_merchant_serial()));
	         model.addAttribute("point", user_order_listService.point(svo.getOrder_merchant_serial()));
	         model.addAttribute("orderTime", user_order_listService.getDate(vo));
	         model.addAttribute("userPoint", orderService.getUserDetails(user_id).getUser_point());
	 		model.addAttribute("userMember", orderService.getUserDetails(user_id).getUser_membership_name());
	         System.out.println("detail: " +user_order_listService.getDetail(vo));
	         
	         return "myPage/orderCancel";
	   }
	   
	   /* 주문 취소신청 눌렀을 때 취소완료로 상태를 변경할 처리과정*/
	   @RequestMapping("order_cancelProc.do")
	   public String orderCancelSubmit(HttpServletRequest request, HttpSession session, ShippingVO svo, User_order_listVO vo, Model model) {
//	       vo.setOrder_delivery_status("취소완료");
//	       String status = vo.getOrder_delivery_status();
	      int success = 0;
	       success = user_order_listService.updateStatusOrder(vo);

	       if (success != 0 ) {
	     
	       }
	       else {
	   
	       }
	       return "myPage/getOrderCancelComplete";
	       
	   }
	   
	   
}
