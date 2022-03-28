package forever.young.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forever.young.user.dao.user_address_listDAO;
import forever.young.user.vo.user_address_listVO;

@Service
public class user_address_listServiceImpl implements user_address_listService {
	@Autowired
	private user_address_listDAO user_address_listDAO;
	
	@Override
	public List<user_address_listVO> getBoard(String user_id) throws Exception {
		return user_address_listDAO.getBoard(user_id);
	}

	@Override
	public void insert(user_address_listVO vo) {
		user_address_listDAO.insertBoard(vo);

	}

	@Override
	public void update(user_address_listVO vo) {
		user_address_listDAO.update(vo);

	}

	@Override
	public void setDefaultAddress(user_address_listVO vo) {
		user_address_listDAO.setDefaultAddress(vo);

	}

	@Override
	public void deleteAddress(user_address_listVO vo) {
		user_address_listDAO.deleteAddress(vo);

	}

}
