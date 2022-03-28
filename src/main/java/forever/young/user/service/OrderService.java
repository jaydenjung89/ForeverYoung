package forever.young.user.service;

import java.util.List;

import forever.young.user.vo.GoodsStockVO;
import forever.young.user.vo.ShippingVO;
import forever.young.user.vo.UserDetailVO;
import forever.young.vo.OrderVO;

public interface OrderService {
	void insertOrder(OrderVO order);
	void insertOrderDetail(OrderVO order);
	void updateUserPurchase(UserDetailVO userDetail);
	UserDetailVO getUserDetails(String user_id);
	void insertShippingInfo(ShippingVO shipping);
	void reduceGoodsStock(GoodsStockVO stock);
	public List<OrderVO> orderEndPage(String order_merchant_serial);
}
