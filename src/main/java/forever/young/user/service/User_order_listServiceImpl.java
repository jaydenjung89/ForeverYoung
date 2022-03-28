package forever.young.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forever.young.user.dao.User_order_listDAO;
import forever.young.user.vo.Pagination;
import forever.young.user.vo.ShippingVO;
import forever.young.user.vo.User_order_listVO;

@Service("User_order_listService")
public class User_order_listServiceImpl implements User_order_listService {
	@Autowired
	private User_order_listDAO user_order_listDAO;
	
	@Override
	public List<User_order_listVO> getBoard(String user_id, Pagination pagination) throws Exception {
		return user_order_listDAO.getBoard(user_id, pagination);
	}

	@Override
	public int getBoardListCnt() throws Exception {
		return user_order_listDAO.getBoardListCnt();
	}

	@Override
	public List<User_order_listVO> getDetail(User_order_listVO vo) {
		return user_order_listDAO.getDetail(vo);
	}

	@Override
	public ShippingVO getShipping(ShippingVO svo) {
		return user_order_listDAO.getShipping(svo);
	}

	@Override
	public int oldPrice(String order_merchant_serial) throws Exception {
		return user_order_listDAO.oldPrice(order_merchant_serial);
	}

	@Override
	public int dcPrice(String order_merchant_serial) throws Exception {
		return user_order_listDAO.dcPrice(order_merchant_serial);
	}

	@Override
	public int point(String order_merchant_serial) {
		return user_order_listDAO.point(order_merchant_serial);
	}

	@Override
	public User_order_listVO getDate(User_order_listVO vo) {
		return user_order_listDAO.getDate(vo);
	}
	@Override
	public int updateStatusOrder(User_order_listVO vo) {
	   
	   return user_order_listDAO.updateStatusOrder(vo);
	}
}
