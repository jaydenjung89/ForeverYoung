package forever.young.user.service;

import java.util.List;

import forever.young.user.vo.Board_noticeVO;

public interface Board_noticeService {
   //게시물 상세 내용 조회
   Board_noticeVO getBoard(Board_noticeVO vo) throws Exception;
   //게시물 조회수 증가
   public void updateHit(int notice_serial);
   //게시물 리스트 조회
   public List<Board_noticeVO> getBoardList(Board_noticeVO vo) throws Exception;
}
