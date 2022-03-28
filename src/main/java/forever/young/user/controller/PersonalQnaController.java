package forever.young.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import forever.young.user.service.PersonalQnaService;
import forever.young.user.vo.Pagination;
import forever.young.user.vo.PersonalQnaVO;
import forever.young.user.vo.UserVO;

@Controller
@SessionAttributes("userId")
public class PersonalQnaController {
	
	@Autowired
	private PersonalQnaService personalqnaService;
	
	
	@RequestMapping("oneqmain.do")
	public String clientCenter1(Model model, @RequestParam(required = false, defaultValue = "1") int page, @RequestParam(required = false, defaultValue = "1") int range, HttpServletRequest request) {
		int listCnt=personalqnaService.getBoardListCnt();
		HttpSession session=request.getSession();
		String user_id=((String)session.getAttribute("userId"));
		Pagination pagination=new Pagination();
		
		pagination.pageInfo(page, range, listCnt);
		
		model.addAttribute("pagination", pagination);
		model.addAttribute("board", personalqnaService.getBoard_personalList(pagination, user_id));
		System.out.println(pagination.getStartList());
		return "clientCenter/oneqmain2";
	}
	//1:1문의 게시판 페이지
//	@RequestMapping("oneqmain.do")
//	public String getList(HttpServletRequest request, PersonalQnaVO vo, Model model) {
//		HttpSession session=request.getSession();
//		vo.setUser_id((String)session.getAttribute("userId"));
//		List<PersonalQnaVO> boardList=personalqnaService.getPersonalQnaList(vo);
//		
//		if(boardList.size()>0) {
//			model.addAttribute("peersonalqnaboard", boardList);
//		}
//		return "clientCenter/oneqmain";
//	}
	
	//1:1 문의 새글 페이지
	@RequestMapping("oneqwrite.do")
	public String oneqwriteGETPage(HttpServletRequest request, UserVO vo, Model model, PersonalQnaVO pvo) {
		HttpSession session=request.getSession();
		pvo.setUser_id((String)session.getAttribute("userId"));
		vo.setUser_id((String)session.getAttribute("userId"));
		model.addAttribute("user", personalqnaService.getUser(vo));
				
		return "clientCenter/oneqwrite";
	}
	
	//1:1문의 새글 작성
	@RequestMapping(value="insertPersonalQna.do")
	public String insertPersonalQna(PersonalQnaVO vo) {
		personalqnaService.insertPersonalQna(vo);
		return "redirect:oneqmain.do";
		
	}
	//1:1 문의 수정 페이지
	@RequestMapping(value="updatePersonalQnaPage.do")
	public String updatePersonalQna(PersonalQnaVO vo, Model model, UserVO userVo) {
		PersonalQnaVO getPersonalQna=personalqnaService.getPersonalQna(vo);
		model.addAttribute("getPersonalQna", getPersonalQna);
		
		return "clientCenter/oneqwrite";
	}
	
	//1:1 문의 수정 기능
	@RequestMapping(value="updatePersonalQna.do")
	public String updatePostPersonalQna(PersonalQnaVO vo) {
		personalqnaService.updatePersonalQna(vo);
		return "redirect:oneqmain.do";
	}
	
	//1:1 문의 삭제 기능
	@RequestMapping(value="deletePersonalQna.do")
	public String deletePersonalQnaPOST(PersonalQnaVO vo) {
		personalqnaService.deletePersonalQna(vo);
		return "redirect:oneqmain.do";
	}
}
