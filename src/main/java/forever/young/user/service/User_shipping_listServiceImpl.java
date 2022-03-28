package forever.young.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forever.young.user.dao.User_shipping_listDAO;
import forever.young.user.vo.User_shipping_listVO;

@Service
public class User_shipping_listServiceImpl implements User_shipping_listService {
	@Autowired
	private User_shipping_listDAO user_shipping_listDAO;
	
	@Override
	public List<User_shipping_listVO> getBoard(String user_id) throws Exception {
		return user_shipping_listDAO.getBoard(user_id);
	}

	@Override
	public void insert(User_shipping_listVO vo) {
		user_shipping_listDAO.insertBoard(vo);

	}

	@Override
	public void update(User_shipping_listVO vo) {
		user_shipping_listDAO.update(vo);

	}

	@Override
	public void setDefaultAddress(User_shipping_listVO vo) {
		user_shipping_listDAO.setDefaultAddress(vo);

	}

	@Override
	public void deleteAddress(User_shipping_listVO vo) {
		user_shipping_listDAO.deleteAddress(vo);

	}

	@Override
	public User_shipping_listVO getShipping(User_shipping_listVO vo) {
		return user_shipping_listDAO.getShipping(vo);
	}

	@Override
	public User_shipping_listVO selectAddress(User_shipping_listVO vo) {
		return user_shipping_listDAO.selectAddress(vo);
	}

}
