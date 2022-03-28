package forever.young.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import forever.young.user.service.PointService;
import forever.young.user.vo.User_order_listVO;

@Controller
public class PointController {
	@Autowired
	private PointService pointService;
	
	@RequestMapping("point.do")
	public String point(HttpSession session, User_order_listVO vo, Model model) {
		String userId=(String)session.getAttribute("userId");
		Integer tp=(Integer)pointService.totalPoint(userId)==null?0:pointService.totalPoint(userId);
		
		model.addAttribute("point", pointService.pointList(userId));
		model.addAttribute("totalPoint", tp);
		return "";
	}
}
