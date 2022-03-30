package forever.young.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import forever.young.user.service.Board_noticeService;
import forever.young.user.vo.Board_noticeVO;

@Controller
public class Board_noticeController {
   @Autowired
   private Board_noticeService board_noticeService;
   
   /* 게시글 목록 가져오기(페이징 작업 필요) */
   @RequestMapping(value="notice.do")
   public String noticeList(Board_noticeVO vo, Model model) throws Exception {
      System.out.println("페이지 불러오기");
      List<Board_noticeVO> getBoardList = board_noticeService.getBoardList(vo);
      model.addAttribute("board", getBoardList);
      System.out.println("게시글 가져오기 시작");
      return "customercenter/notice";
   }
   
   /* 게시판 상세내용 가져오기*/
   @RequestMapping("notice_detail.do")
   public String noticeDetail(HttpServletRequest request, Board_noticeVO vo, Model model) throws Exception {
      //가져올 게시글의 번호 
      String num = request.getParameter("notice_serial");
      
      //조회수 1증가시키고 상세내용 보여줘야함
      board_noticeService.updateHit(Integer.parseInt(num));
      
      model.addAttribute("board", board_noticeService.getBoard(vo));
      return "customercenter/noticeDetail";
   }
   
   
   

}