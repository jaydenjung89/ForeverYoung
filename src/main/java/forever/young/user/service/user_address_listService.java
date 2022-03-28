package forever.young.user.service;

import java.util.List;

import forever.young.user.vo.user_address_listVO;

public interface user_address_listService {
	List<user_address_listVO> getBoard(String user_id) throws Exception;
	void insert(user_address_listVO vo);
	void update(user_address_listVO vo);
	void setDefaultAddress(user_address_listVO vo);
	void deleteAddress(user_address_listVO vo);
}
