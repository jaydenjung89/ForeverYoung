package forever.young.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import forever.young.user.vo.User_shipping_listVO;
import forever.young.user.vo.user_address_listVO;

@Repository
public class User_shipping_listDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<User_shipping_listVO> getBoard(String user_id) throws Exception{
		return sqlSession.selectList("User_shipping_listDAO.getAddress", user_id);
	}
	public void insertBoard(User_shipping_listVO vo) {
		sqlSession.insert("User_shipping_listDAO.address_new", vo);
	}
	public void update(User_shipping_listVO vo) {
		sqlSession.update("User_shipping_listDAO.address_update", vo);
	}
	public void setDefaultAddress(User_shipping_listVO vo) {
		sqlSession.update("User_shipping_listDAO.setDefaultAllFalse", vo);
		sqlSession.update("User_shipping_listDAO.setDefaultAddress", vo);
	}
	public void deleteAddress(User_shipping_listVO vo) {
		sqlSession.delete("User_shipping_listDAO.deleteAddress", vo);
	}
	public User_shipping_listVO getShipping(User_shipping_listVO vo) {
		return sqlSession.selectOne("User_shipping_listDAO.getShipping", vo);
	}
	public User_shipping_listVO selectAddress(User_shipping_listVO vo) {
		return sqlSession.selectOne("User_shipping_listDAO.selectAddress", vo);
	}
}
