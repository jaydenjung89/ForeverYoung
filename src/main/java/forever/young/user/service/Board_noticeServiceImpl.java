package forever.young.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forever.young.user.dao.Board_noticeDAO;
import forever.young.user.vo.Board_noticeVO;
@Service
public class Board_noticeServiceImpl implements Board_noticeService {

   @Autowired
   private Board_noticeDAO board_noticeDAO;
   
   @Override
   public Board_noticeVO getBoard(Board_noticeVO vo) throws Exception {
      
      return board_noticeDAO.getBoard(vo);
   }
   @Override
   public void updateHit(int notice_serial) {
      
      board_noticeDAO.updateHit(notice_serial);
      
   }
   @Override
   public List<Board_noticeVO> getBoardList(Board_noticeVO vo) throws Exception {
      System.out.println("getBoardList기능 처리 시작");
      List<Board_noticeVO> list = null;
      list = board_noticeDAO.getBoardList(vo);
      return list;
   }

}