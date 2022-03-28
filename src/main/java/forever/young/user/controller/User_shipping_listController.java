package forever.young.user.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import forever.young.user.service.User_shipping_listService;
import forever.young.user.vo.PersonalQnaVO;
import forever.young.user.vo.User_shipping_listVO;

@SessionAttributes("userId")
@Controller
public class User_shipping_listController {
	@Autowired
	private User_shipping_listService shippinglistService;
	
	@GetMapping("getDeliveryInfo.do")
	public String getDeliveryInfo(HttpSession session, User_shipping_listVO vo, Model model )throws Exception{
		String user_id=(String)session.getAttribute("userId");
		model.addAttribute("list", shippinglistService.getBoard(user_id));
		
		return "myPage/getDeliveryInfo";
	}
	@GetMapping("destination_new.do")
	public String getDeliveryInfo2(String myZipcode, String myAddress, String user_id, String whatsPage, Model model) {
		model.addAttribute("myZipcode", myZipcode);
		model.addAttribute("myAddress", myAddress);
		model.addAttribute("user_id", user_id);
		if(whatsPage!=null)
			model.addAttribute("whatsPage", whatsPage);
		return "myPage/deliveryRegistForm";
	}
	@GetMapping("destination_update.do")
	public String getDeliveryInfo3(Model model, User_shipping_listVO vo) {
		User_shipping_listVO getShipping=shippinglistService.getShipping(vo);
		model.addAttribute("getShipping", getShipping);
		return "myPage/deliveryRegistForm";
	}
	@RequestMapping(value="getOrderForminsert.do")
	
	public String getOrderForminsert(User_shipping_listVO vo, HttpServletRequest request, Model model, HttpSession session, RedirectAttributes redirect)throws Exception{
		vo.setUser_id((String)session.getAttribute("userId"));
		shippinglistService.insert(vo);
		model.addAttribute("list");
		return "redirect:getDeliveryInfo.do";
	}
	
	@RequestMapping(value="getOrderFormupdate.do")
	public String getOrderFormupdate(User_shipping_listVO vo, Model model, RedirectAttributes redirect)throws Exception{
		shippinglistService.update(vo);
		model.addAttribute("list");
		redirectedUrl("#");
		return "redirect:getDeliveryInfo.do";
	}
	@RequestMapping(value="updateDefaulAddress.do", produces = "html/text; charset=UTF-8")
	@ResponseBody
	public String updateDefaultAddress(User_shipping_listVO vo,HttpSession session) {
		vo.setUser_id((String)session.getAttribute("userId"));
		shippinglistService.setDefaultAddress(vo);
		return "기본배송지가 변경되었습니다.";
	}
	@RequestMapping(value="deleteAddress.do")
	
	public String deleteAddress(User_shipping_listVO vo) {
		shippinglistService.deleteAddress(vo);
		return "redirect:getDeliveryInfo.do";
	}
}
