package forever.young.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import forever.young.user.service.GoodsQnaService;
import forever.young.user.vo.GoodsQnaVO;

@Controller
public class GoodsQnaController {
	@Autowired
	private GoodsQnaService goodsqnaService;
	
	@RequestMapping("goodsQnaPage.do")
	public String getListPage(GoodsQnaVO goodsqnaVO, Model model, HttpServletRequest request) {
		HttpSession session=request.getSession();
		String userId = (String) session.getAttribute("userId");
		goodsqnaVO.setUser_id(userId);
		
		List<GoodsQnaVO> GoodsQnaList=goodsqnaService.getGoodsQnaList1(goodsqnaVO);

		for(GoodsQnaVO qna:GoodsQnaList) {
			qna.setQna_goods_content(qna.getQna_goods_content().replace("\r\n", "ln"));
		}
		model.addAttribute("goodsqnalist", GoodsQnaList);
		
		return "myPage/goodsqna";
	}
	
	@RequestMapping("goodsQna.do")
	public String getList(HttpServletRequest request, GoodsQnaVO vo, Model model) {
		
		HttpSession session=request.getSession();
		vo.setUser_id((String)session.getAttribute("userId"));
		List<GoodsQnaVO> boardList=goodsqnaService.getGoodsQnaUserList(vo);
		for(GoodsQnaVO qna:boardList) {
			qna.setQna_goods_content(qna.getQna_goods_content().replaceAll("\r\n", "ln"));
		}
		model.addAttribute("goodsqnaboard", boardList);
		return "product/goodsqnawrite";
	}
	
	@RequestMapping("insertGoodsQna.do")
		public String insertGoodsQna(GoodsQnaVO vo, RedirectAttributes redirect) {
			goodsqnaService.insertGoodsQna(vo);
			redirect.addAttribute("category_first_serial", vo.getCategory_first_serial());
			redirect.addAttribute("category_second_serial", vo.getCategory_second_serial());
			redirect.addAttribute("category_third_serial", vo.getCategory_third_serial());
			redirect.addAttribute("category_goods_serial", vo.getCategory_goods_serial());
			return "redirect:itemPage.do";
		}
	
	@RequestMapping("deleteGoodsQna.do")
	public String deleteGoodsQna(GoodsQnaVO vo, RedirectAttributes redirect) {
		goodsqnaService.deleteGoodsQna(vo);
		if(vo.getCategory_goods_serial()!=0) {
			redirect.addAttribute("category_first_serial", vo.getCategory_first_serial());
			redirect.addAttribute("category_second_serial", vo.getCategory_second_serial());
			redirect.addAttribute("category_third_serial", vo.getCategory_third_serial());
			redirect.addAttribute("category_goods_serial", vo.getCategory_goods_serial());
			return "redirect:itemPage.do";
		}else {
			return "redirect:goodsQna.do";
		}
	
	}
	
	@RequestMapping("updateGoodsQna.do")
	public String updateGoodsQna(GoodsQnaVO vo, RedirectAttributes redirect) {
		goodsqnaService.updateGoodsQna(vo);
		if(vo.getCategory_goods_serial()!=0) {
			redirect.addAttribute("category_first_serial", vo.getCategory_first_serial());
			redirect.addAttribute("category_second_serial", vo.getCategory_second_serial());
			redirect.addAttribute("category_third_serial", vo.getCategory_third_serial());
			redirect.addAttribute("category_goods_serial", vo.getCategory_goods_serial());
			return "redirect:itemPage.do";
		}else {
			return "redirect:goodsQna.do";
		}
	}
}
