package forever.young.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import forever.young.user.vo.Board_noticeVO;

@Repository
public class Board_noticeDAO {
   @Autowired
   private SqlSessionTemplate sqlSessionTemplate;
   
   /* 게시글 상세내용 가져오기*/
   public Board_noticeVO getBoard(Board_noticeVO vo) throws Exception {
      
      return (Board_noticeVO) sqlSessionTemplate.selectOne("Board_noticeDAO.getBoard", vo);
   }
   /* 공지사항 게시글 목록 가져오기*/
   public List<Board_noticeVO> getBoardList(Board_noticeVO vo) {
     
      
      return sqlSessionTemplate.selectList("Board_noticeDAO.getBoardNoticeList", vo);
   }
   /* 조회수 업데이트 */
   public void updateHit(int notice_serial) {
      
      
      sqlSessionTemplate.update("Board_noticeDAO.noticeHitUp", notice_serial);
   }
}