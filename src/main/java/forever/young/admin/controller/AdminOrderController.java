package forever.young.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import forever.young.admin.service.AdminService;
import forever.young.admin.vo.AdminOrderVO;

@Controller
public class AdminOrderController {
	@Autowired
	private AdminService service;
	
	//包府磊 林巩包府 搬力肯丰 府胶飘
	@RequestMapping("admin_orderWaitList.mdo")
	public String orderWaitList(Model model)throws Exception{
		model.addAttribute("orderWaitList", service.getOrderWaitList());
		
		return "order/admin_orderWaitList";
	}
	
	
	//包府磊 林巩包府 府胶飘(林巩 秒家)
	@RequestMapping("admin_cancelList.mdo")
	public String orderCancleList(Model model)throws Exception{
		model.addAttribute("orderCacelList", service.getOrderCancleList());
		
		return "order/admin_orderCancel";
	}
}
