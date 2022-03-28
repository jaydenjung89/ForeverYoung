package forever.young.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import forever.young.user.vo.Pagination;
import forever.young.user.vo.ShippingVO;
import forever.young.user.vo.User_order_listVO;

@Repository
public class User_order_listDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<User_order_listVO> getBoard(String user_id, Pagination pagination)throws Exception{
		return sqlSession.selectList("orderListDAO.orderlist", user_id);
	}
	public int getBoardListCnt() throws Exception{
		return sqlSession.selectOne("orderListDAO.getBoardListCnt");
	}
	public List<User_order_listVO> getDetail(User_order_listVO vo){
		return sqlSession.selectList("orderListDAO.order_detaillist", vo);
	}
	public ShippingVO getShipping(ShippingVO svo) {
		return sqlSession.selectOne("orderListDAO.shipping", svo);
	}
	public int oldPrice(String order_merchant_serial)throws Exception{
		return sqlSession.selectOne("orderListDAO.oldPrice", order_merchant_serial);
	}
	public int dcPrice(String order_merchant_serial)throws Exception{
		return sqlSession.selectOne("orderListDAO.dcPrice",order_merchant_serial);
	}
	public int point(String order_merchant_serial) {
		return sqlSession.selectOne("orderListDAO.point", order_merchant_serial);
	}
	public User_order_listVO getDate(User_order_listVO vo) {
		return sqlSession.selectOne("orderListDAO.orderTime", vo);
	}
	public int updateStatusOrder(User_order_listVO vo) {
	       return sqlSession.update("orderListDAO.order_status_update", vo);
	   }
}
