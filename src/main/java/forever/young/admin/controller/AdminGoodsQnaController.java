package forever.young.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import forever.young.admin.service.AdminService;
import forever.young.admin.vo.GoodsQnaVO;

@Controller
public class AdminGoodsQnaController {
	@Autowired
	private AdminService service;
	
	//관리자 상품 문의 리스트 (답변대기)
	@RequestMapping("gqnaList.mdo")
	public String gqnaList(GoodsQnaVO gqna, Model model)throws Exception{
		model.addAttribute("gqnaList", service.gqnaList(gqna));
		
		return "qna/goodsQna";
	}
	
	//관리자 상품문의 삭제 (답변 대기)
	@RequestMapping("deleteGqna.mdo")
	public String deleteGqna(GoodsQnaVO gqna)throws Exception {
		gqna.getCategory_goods_name();
		
		int delete = 0;
		delete = service.deleteGqna(gqna);
		
		if(delete != 0) {
			return "redirect:gqnaList.mdo";
		}else {
			return "redirect:gqnaList.mdo";
		}
	}
	
	//상품문의 답변
	@RequestMapping("toAnswer.mdo")
	public String toAnanswer(GoodsQnaVO gqna, Model model) throws Exception {
		model.addAttribute("qnaone", service.gqnaOne(gqna));
		
		return "qna/answerGoodsQna";
	}
	
	//관리자 상품 문의 답변
	@RequestMapping("updateGqna.mdo")
	public String updateGqna(GoodsQnaVO gqna)throws Exception{
		int update = 0;
		update = service.updateGqna(gqna);
		
		if(update != 0) {
			return "redirect:gqnaList.mdo";
		}else {
			return "redirect:toAnswer.mdo";
		}
	}
	
	//관리자 상품 문의 리스트 (답변완료)
	@RequestMapping("gqnaListSuc.mdo")
	public String gqnaListSuc(GoodsQnaVO gqna, Model model)throws Exception{
		model.addAttribute("gqnaListSuc", service.gqnaListSuc(gqna));
		
		return "qna/sucGoodsQna";
	}
	
	//관리자 상품 문의 삭제 (답변완료)
	@RequestMapping("deleteGqnaSuc.mdo")
	public String deleteGqnaSuc(GoodsQnaVO gqna)throws Exception{
		gqna.getCategory_goods_name();
		
		int delete = 0;
		delete = service.deleteGqna(gqna);
		if(delete != 0) {
			return "redirect:gqnaListSuc.mdo";
		}else {
			return "redirect:gqnaListSuc.mdo";
		}
	}
	
	//관리자 상품 문의 답변 확인
	@RequestMapping("checkAnswer.mdo")
	public String checkAnswer(GoodsQnaVO gqna, Model model)throws Exception{
		model.addAttribute("qnaone", service.gqnaOne(gqna));
		System.out.println("again");
		
		return "qna/checkAnswerQna";
	}
	
	//관리자 상품 문의 답변 수정
	@RequestMapping("updateGqnaSuc.mdo")
	public String updateGqnaSuc(GoodsQnaVO gqna)throws Exception{
		int update = 0;
		update = service.updateGqnaSuc(gqna);
		
		if(update != 0) {
			return "redirect:gqnaListSuc.mdo";
		}else {
			return "redirect:checkAnswer.mdo";
		}
	}
}
