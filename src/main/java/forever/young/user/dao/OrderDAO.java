package forever.young.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import forever.young.user.vo.GoodsStockVO;
import forever.young.user.vo.ShippingVO;
import forever.young.user.vo.UserDetailVO;
import forever.young.vo.OrderVO;
import forever.young.vo.ProductVO;

@Repository
public class OrderDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void insertOrder(OrderVO order) {
		sqlSession.insert("orderDAO.insertOrder", order);
	}
	public void insertOrderDetails(OrderVO order) {
		sqlSession.insert("orderDAO.insertOrderDetail", order);
	}
	public void updateUserPurchase(UserDetailVO userDetail) {
		sqlSession.update("orderDAO.updateUserPurchase", userDetail);
	}
	public UserDetailVO getUserDetails(String user_id) {
		return sqlSession.selectOne("orderDAO.getUserDetails", user_id);
	}
	public void insertShippingInfo(ShippingVO shipping) {
		sqlSession.insert("orderDAO.insertShippingInfo", shipping);
	}
	public List<GoodsStockVO> getGoodsStock(int goodsSerial){
		return sqlSession.selectList("orderDAO.getGoodsStocks", goodsSerial);
	}
	public void reduceDetailStock(ProductVO goodsStock) {
		sqlSession.update("orderDAO.reduceDetailStock", goodsStock);
	}
	public void reduceStock(GoodsStockVO goodsStock) {
		sqlSession.update("orderDAO.reduceStock", goodsStock);
	}
	public List<OrderVO> orderEndPage(String order_merchant_serial) {
	      return sqlSession.selectList("orderDAO.orderEndList",order_merchant_serial);
	   }
}
