package forever.young.user.service;

import java.util.List;

import forever.young.user.vo.User_shipping_listVO;

public interface User_shipping_listService {
	List<User_shipping_listVO> getBoard(String user_id) throws Exception;
	void insert(User_shipping_listVO vo);
	void update(User_shipping_listVO vo);
	void setDefaultAddress(User_shipping_listVO vo);
	void deleteAddress(User_shipping_listVO vo);
	public User_shipping_listVO getShipping(User_shipping_listVO vo);
	public User_shipping_listVO selectAddress(User_shipping_listVO vo);
}
