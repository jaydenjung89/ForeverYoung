package forever.young.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forever.young.user.dao.PersonalQnaDAO;
import forever.young.user.vo.Pagination;
import forever.young.user.vo.PersonalQnaVO;
import forever.young.user.vo.UserVO;

@Service
public class PersonalQnaServiceImpl implements PersonalQnaService {
	
	@Autowired
	private PersonalQnaDAO personalqnaDAO;
	
	@Override
	public UserVO getUser(UserVO vo) {
		return personalqnaDAO.getUser(vo);
	}

	@Override
	public int insertPersonalQna(PersonalQnaVO vo) {
		return personalqnaDAO.insertPersonalQna(vo);
	}

	@Override
	public int updatePersonalQna(PersonalQnaVO vo) {
		return personalqnaDAO.updatePersonalQna(vo);
	}

	@Override
	public int deletePersonalQna(PersonalQnaVO vo) {
		return personalqnaDAO.deletePersonalQna(vo);
	}

	@Override
	public PersonalQnaVO getPersonalQna(PersonalQnaVO vo) {
		return personalqnaDAO.getPersonalQna(vo);
	}

	@Override
	public List<PersonalQnaVO> getPersonalQnaList(PersonalQnaVO vo) {
		return personalqnaDAO.PersonalQnaList(vo);
	}

	@Override
	public int getBoardListCnt() {
		return personalqnaDAO.getBoardListCnt();
	}

	@Override
	public List<PersonalQnaVO> getBoard_personalList(Pagination pagination, String user_id) {
		System.out.println(pagination.getStartList());
		System.out.println(pagination.getListSize());
		return personalqnaDAO.getBoard_personalList(pagination, user_id);
	}
	
	//마이페이지
	@Override
	public List<PersonalQnaVO> getPersonalQnaList1(PersonalQnaVO vo) {
		// TODO Auto-generated method stub
		return personalqnaDAO.PersonalQnaList1(vo);
	}

}
