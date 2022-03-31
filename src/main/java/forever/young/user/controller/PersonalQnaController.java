package forever.young.user.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import forever.young.admin.vo.AdminBannerVO;
import forever.young.user.service.GoodsQnaService;
import forever.young.user.service.PersonalQnaService;
import forever.young.user.vo.Pagination;
import forever.young.user.vo.PersonalQnaVO;
import forever.young.user.vo.UserVO;
import s3.AwsS3;

@Controller
@SessionAttributes("userId")
public class PersonalQnaController {
	private String url = "https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/";

	//DB
	@Autowired
	private AwsS3 awsS3;
	
	@Autowired
	private PersonalQnaService personalqnaService;
	
	
	@RequestMapping("oneqmain.do")
	public String clientCenter1(Model model, @RequestParam(required = false, defaultValue = "1") int page, @RequestParam(required = false, defaultValue = "1") int range, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userId") == null) {
			System.out.println("로그인페이지로 이동");
			return "join_login/login";
		}else {
         
			int listCnt=personalqnaService.getBoardListCnt();
			session=request.getSession();
			String user_id=((String)session.getAttribute("userId"));
			Pagination pagination=new Pagination();
         
			pagination.pageInfo(page, range, listCnt);
         
			model.addAttribute("pagination", pagination);
			model.addAttribute("board", personalqnaService.getBoard_personalList(pagination, user_id));
			System.out.println(pagination.getStartList());
			return "clientCenter/oneqmain2";
		}
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
	public String insertPersonalQna(MultipartFile uploadFile, PersonalQnaVO vo) {
		
		try {
			String key = "personalQna/"+uploadFile.getOriginalFilename();
			InputStream is = uploadFile.getInputStream();
			String contentType = uploadFile.getContentType();
			long contentLength = uploadFile.getSize();
			
			awsS3.upload(is, key, contentType, contentLength);
			
			vo.setQna_personal_image1(url + key);
			
			personalqnaService.insertPersonalQna(vo);
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		
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
	public String updatePostPersonalQna(PersonalQnaVO vo, MultipartFile uploadFile) {
		
		if(uploadFile.getSize() != 0) {
			//교체하고 싶은 이미지가 있을 경우 0이 아니므로 s3에 있는 이미지를 삭제
			PersonalQnaVO qnavo = personalqnaService.getPersonalQna(vo);
			String deleteKey = qnavo.getQna_personal_image1().substring(49);
			awsS3.delete(deleteKey);
			
			//새로운 이미지를 s3에 등록
			try {
				String key = "personalQna/"+uploadFile.getOriginalFilename();
				InputStream is = uploadFile.getInputStream();
				String contentType = uploadFile.getContentType();
				long contentLength = uploadFile.getSize();
				awsS3.upload(is, key, contentType, contentLength);
				
				vo.setQna_personal_image1(url + key);
			}catch(IOException e) {
				e.printStackTrace();
			}
			
			//교체하고싶은 이미지가 있을 경우 이미지를 먼저 지우고
			//새로운 이미지를 등록한 후에 새로운 이미지 경로를 포함하여 db에 저장
//			int success = 0;
//			success = personalqnaService.updatePersonalQna(vo);
//			
//			if(success != 0) {
//				return "redirect:oneqmain.do";
//			}else {
//				return "redirect:oneqmain.do";
//			}
			personalqnaService.updatePersonalQna(vo);
		}
		
		return "redirect:oneqmain.do";
	
//		return "redirect:oneqmain.do";
	}
	
	//1:1 문의 삭제 기능
	@RequestMapping(value="deletePersonalQna.do")
	public String deletePersonalQnaPOST(PersonalQnaVO vo, MultipartFile uploadFile, @RequestParam(required = false, defaultValue = "1") int page, @RequestParam(required = false, defaultValue = "1") int range, HttpServletRequest request) {
		
		boolean result = false;
		
		int listCnt=personalqnaService.getBoardListCnt();
		
		HttpSession session=request.getSession();
		String user_id=((String)session.getAttribute("userId"));
		Pagination pagination=new Pagination();
		
		pagination.pageInfo(page, range, listCnt);
		
		//1. db에서 삭제하고싶은 데이터를 가져온다.
		PersonalQnaVO qnavo = personalqnaService.getPersonalQna(vo);
		
		//2. 데이터에서 파일 경로를 delete의 경로에 담아버린다.
		String deletePath = qnavo.getQna_personal_image1();
		
		//3. deletePath에 있는 데이터와 db에 있는 모든 경로와 비교해서 일치하는 경로를 삭제
		List<PersonalQnaVO> qnaList = personalqnaService.getBoard_personalList(pagination, user_id);
		
		for(PersonalQnaVO qna : qnaList) {
			System.out.println("bann : " + qna.getQna_personal_image1());
			System.out.println("deletepath : " + deletePath);
			
			if(qna.getQna_personal_image1().equals(deletePath)) {
				personalqnaService.deletePersonalQna(vo);
				result = true;
				
				break;
			}
		}
		
		if(!result) {
			String deleteKey = qnavo.getQna_personal_image1().substring(49);
			awsS3.delete(deleteKey);
			
			personalqnaService.deletePersonalQna(vo);
			
		}
		
		
//		personalqnaService.deletePersonalQna(vo);
		return "redirect:oneqmain.do";
	}
}
