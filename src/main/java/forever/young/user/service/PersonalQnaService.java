package forever.young.user.service;

import java.util.List;

import forever.young.user.vo.Pagination;
import forever.young.user.vo.PersonalQnaVO;
import forever.young.user.vo.UserVO;

public interface PersonalQnaService {

	public UserVO getUser(UserVO vo);
	public int insertPersonalQna(PersonalQnaVO vo);
	public int updatePersonalQna(PersonalQnaVO vo);
	public int deletePersonalQna(PersonalQnaVO vo);
	public PersonalQnaVO getPersonalQna(PersonalQnaVO vo);
	List<PersonalQnaVO> getPersonalQnaList(PersonalQnaVO vo);
	public int getBoardListCnt();
	List<PersonalQnaVO> getBoard_personalList(Pagination pagination, String user_id);
	
	//마이페이지
	List<PersonalQnaVO> getPersonalQnaList1(PersonalQnaVO vo);
}
