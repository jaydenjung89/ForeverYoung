package forever.young.user.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

import forever.young.user.service.CartService;
import forever.young.user.service.MembershipService;
import forever.young.user.service.OrderService;
import forever.young.user.service.UserService;
import forever.young.user.service.User_shipping_listService;
import forever.young.user.vo.CartVO;
import forever.young.user.vo.GoodsStockVO;
import forever.young.user.vo.MembershipVO;
import forever.young.user.vo.ShippingVO;
import forever.young.user.vo.UserDetailVO;
import forever.young.user.vo.UserVO;
import forever.young.user.vo.User_shipping_listVO;
import forever.young.user.vo.user_address_listVO;
import forever.young.vo.OrderVO;
import forever.young.vo.ProductVO;

@Controller
@SessionAttributes("userId")
public class PaymentController {
	@Autowired
	private CartService cartService;
	@Autowired
	private UserService userService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private User_shipping_listService shippingService;
	@Autowired
	private MembershipService membershipService;
	
	private IamportClient api;
    public PaymentController() {
         this.api=new IamportClient("",
               "");
      }

	 @RequestMapping("iamport.do")
	   @ResponseBody
	   public IamportResponse<Payment> paymentByImUid(Model model, Locale locale, HttpSession session, @RequestParam(value="imp_uid")String imp_uid) throws IamportResponseException, IOException {
	      Map<String,String> payMap = new HashMap<String,String>();
	      payMap.put("Uid", api.paymentByImpUid(imp_uid).getResponse().getMerchantUid());
	      payMap.put("amout", api.paymentByImpUid(imp_uid).getResponse().getMerchantUid());
	      payMap.put("payType", api.paymentByImpUid(imp_uid).getResponse().getMerchantUid());
	      payMap.put("payStatus", api.paymentByImpUid(imp_uid).getResponse().getStatus());
	      return api.paymentByImpUid(imp_uid);

	}
	@RequestMapping("paymentPage.do")
	public String paymentPage(user_address_listVO addressVO, Model model, HttpSession session,User_shipping_listVO shippingVO, RedirectAttributes redirect) throws Exception {
		String userId=(String)session.getAttribute("userId");
		UserVO userVO=new UserVO();
		userVO.setUser_id(userId);
		List<CartVO> purchaseGoods=cartService.getPurchaseGoods(userId);
		List<ProductVO> purchaseList=new ArrayList<ProductVO>();
		int totalPrice = 0;
	    int dcPrice = 0;

		
		UserVO userInfo=userService.getUser(userVO);
		String membership=membershipService.getMembershipOfUser(userId);
		MembershipVO membershipInfo=membershipService.getMembershipData(membership);
		
		for(CartVO goods:purchaseGoods) {
			if(!cartService.isStock(goods)) {
				redirect.addFlashAttribute("NotStock", true);
				return "redirect:cartPage.do";
			}
			ProductVO product=cartService.getCartItem(goods);
			product.setGoods_cart_count(goods.getGoods_cart_count());

	         product.setCategory_goods_count(goods.getGoods_cart_count());
	         product.setGoods_cart_count(goods.getGoods_cart_count());
	         totalPrice += product.getCategory_goods_count() * product.getGoods_detail_price();
	         dcPrice += product.getCategory_goods_count()* product.getGoods_last_price();
	
			purchaseList.add(product);
		}
		
		model.addAttribute("getShipping", shippingVO.getUser_shipping_serial());
		
		model.addAttribute("shippingList", shippingService.getBoard(userId));
		model.addAttribute("orderPrice", dcPrice);
		model.addAttribute("goodsPrice", totalPrice);
		model.addAttribute("purchaseList", purchaseList);
		model.addAttribute("userInfo", userInfo);
		model.addAttribute("membershipInfo", membershipInfo);
		model.addAttribute("shippingAddress", addressVO);
		//model.addAttribute("myCoupon", couponService.getMyCoupon(userId));
		model.addAttribute("userPoint", orderService.getUserDetails(userId).getUser_point());
		
		return "myPage/getOrderForm";
		
	}
	@RequestMapping(value="paymentSuccess.do", produces="html/text; charset=utf-8")
	   @ResponseBody
	   public String paymentSuccess(@RequestParam(value="order_merchant_serial") String order_merchant_serial,Model model, OrderVO order, ShippingVO shipping, HttpSession session, RedirectAttributes redirect, int usingPoint) {
	      order.setOrder_delivery_status("결제완료");
	      orderService.insertOrder(order);
	      List<CartVO> putchaseGoods = cartService.getPurchaseGoods(order.getUser_id());
	      for(CartVO cartItem : putchaseGoods) {
	         //제품 재고 변경
	         GoodsStockVO stock = new GoodsStockVO();
	         stock.setCategory_goods_serial(cartItem.getCategory_goods_serial());
	         stock.setGoods_stock_stock_quantity(cartItem.getGoods_cart_count());
	         orderService.reduceGoodsStock(stock);
	         
	         //제품 주문 내역 저장
	         ProductVO productInfo = cartService.getCartItem(cartItem);
	         int goods_price = cartItem.getGoods_cart_count() * productInfo.getGoods_last_price();
	         int goods_old_price = cartItem.getGoods_cart_count() * productInfo.getGoods_detail_price();
	         order.setOrder_goods_old_price(goods_old_price);
	         order.setGoods_count(cartItem.getGoods_cart_count());
	         order.setGoods_price(goods_price);
	         order.setCategory_goods_serial(cartItem.getCategory_goods_serial());
	         orderService.insertOrderDetail(order);
	         //cartService.deleteCartItem(cartItem);
	      }
	      UserDetailVO userDetail = orderService.getUserDetails(order.getUser_id());
	      int point=userDetail.getUser_point()-usingPoint;
	      int totalPurchase = userDetail.getUser_total_purchase();
	      
	      userDetail.setUser_point(point+order.getUser_point());
	      userDetail.setUser_total_purchase(totalPurchase + order.getGoods_price());
	      orderService.updateUserPurchase(userDetail);
	     
	      
	      //배송지에 저장
	      shipping.setOrder_merchant_serial(order.getOrder_merchant_serial());
	      shipping.setShipping_address1(order.getUser_address1());
	      shipping.setShipping_address2(order.getUser_address2());
	      shipping.setShipping_zipcode(order.getUser_zipcode());
	      shipping.setShipping_sender_name(order.getUser_name());
	      shipping.setShipping_sender_phone(order.getUser_phone());
	      orderService.insertShippingInfo(shipping);
	      order_merchant_serial = order.getOrder_merchant_serial();
	      
	      model.addAttribute("order_merchant_serial", order_merchant_serial);
	      model.addAttribute("orderEnd", orderService.orderEndPage(order_merchant_serial));
	      redirect.addAttribute("order_merchant_serial", order_merchant_serial);
	      return "redirect:orderEnd.do";

	   }
	   
	   
	   @RequestMapping(value="orderEnd.do")
	   public String orderEnd(OrderVO order, user_address_listVO addressVO, HttpSession session, Model model, RedirectAttributes redirect) {
	     
	      String user_id = (String) session.getAttribute("userId");
	      //String order_merchant_serial = (String) session.getAttribute("order_merchant_serial");
	      UserVO userVO = new UserVO();
	      userVO.setUser_id(user_id);
	      List<CartVO> purchaseGoods = cartService.getPurchaseGoods(user_id);
	      List<ProductVO> purchaseList = new ArrayList<ProductVO>();
	      int totalPrice = 0;
	      int dcPrice = 0;
	      String order_merchant_serial = order.getOrder_merchant_serial();
	      UserVO userInfo = userService.getUser(userVO);
	      for(CartVO goods : purchaseGoods) {
	         if(!cartService.isStock(goods)) {
	            redirect.addFlashAttribute("NotStock", true);
	            return "redirect:cartPage.do";
	         }
	         ProductVO product = cartService.getCartItem(goods);
	         product.setGoods_cart_count(goods.getGoods_cart_count());
	         product.setCategory_goods_count(goods.getGoods_cart_count());
	         product.setGoods_cart_count(goods.getGoods_cart_count());
	         
	         totalPrice += product.getCategory_goods_count() * product.getGoods_detail_price();
	         dcPrice += product.getCategory_goods_count()* product.getGoods_last_price();
	         purchaseList.add(product);
	         cartService.deleteCartItem(goods);
	      }
	      List<OrderVO> orderEndList = orderService.orderEndPage(order_merchant_serial);
	      model.addAttribute("order_merchant_serial", order_merchant_serial);
	      model.addAttribute("orderPrice", dcPrice);
	      model.addAttribute("goodsPrice", totalPrice);
	      model.addAttribute("purchaseList", purchaseList);
	      model.addAttribute("userInfo",userInfo);
	      model.addAttribute("orderEndList",orderEndList );
	      
	     
	      return "myPage/OrderEnd";
	   }
	@RequestMapping(value="changeAddress.do", produces="html/text; charset=utf-8")
	@ResponseBody
	public ModelAndView address(ModelAndView mav, HttpServletRequest request, User_shipping_listVO vo, HttpSession session) {
		String userId = (String)session.getAttribute("userId");
		String a = request.getParameter("user_shipping_serial");
		int serialNum = Integer.parseInt(a);
		vo.setUser_shipping_serial(serialNum);
		vo.setUser_id(userId);
		
		User_shipping_listVO addresslist = shippingService.selectAddress(vo);
		mav.addObject("shippingList",addresslist);
		
		
		mav.setViewName("myPage/address");
		return mav;
	}
}
