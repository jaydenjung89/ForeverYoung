package forever.young.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forever.young.user.dao.CartDAO;
import forever.young.user.dao.OrderDAO;
import forever.young.user.vo.CartVO;
import forever.young.user.vo.GoodsStockVO;
import forever.young.user.vo.ShippingVO;
import forever.young.user.vo.UserDetailVO;
import forever.young.vo.OrderVO;
import forever.young.vo.ProductVO;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDao;
	@Autowired
	private CartDAO cartDao;
	
	@Override
	public void insertOrder(OrderVO order) {
		orderDao.insertOrder(order);

	}

	@Override
	public void insertOrderDetail(OrderVO order) {
		orderDao.insertOrderDetails(order);

	}

	@Override
	public void updateUserPurchase(UserDetailVO userDetail) {
		orderDao.updateUserPurchase(userDetail);

	}

	@Override
	public UserDetailVO getUserDetails(String user_id) {
		return orderDao.getUserDetails(user_id);
	}

	@Override
	public void insertShippingInfo(ShippingVO shipping) {
		orderDao.insertShippingInfo(shipping);

	}

	@Override
	public void reduceGoodsStock(GoodsStockVO stock) {
		List<GoodsStockVO> stockList=orderDao.getGoodsStock(stock.getCategory_goods_serial());
		GoodsStockVO reduceStock=new GoodsStockVO();
		reduceStock.setGoods_stock_stock_quantity(stock.getGoods_stock_stock_quantity());
		
		for(GoodsStockVO stockItem:stockList) {
			if(stockItem.getGoods_stock_stock_quantity()>=reduceStock.getGoods_stock_stock_quantity()) {
				int beforeStock=stockItem.getGoods_stock_stock_quantity();
				int reduceCount=reduceStock.getGoods_stock_stock_quantity();
				reduceStock.setGoods_stock_serial(stockItem.getGoods_stock_serial());
				reduceStock.setGoods_stock_stock_quantity(beforeStock-reduceCount);
				orderDao.reduceStock(reduceStock);
				break;
			}else {
				reduceStock.setGoods_stock_stock_quantity(reduceStock.getGoods_stock_stock_quantity()-stockItem.getGoods_stock_stock_quantity());
				stockItem.setGoods_stock_stock_quantity(0);
				orderDao.reduceStock(stockItem);
			}
		}
		CartVO cartGoods=new CartVO();
		cartGoods.setCategory_goods_serial(stock.getCategory_goods_serial());
		ProductVO detailStock=cartDao.getGoodsStock(cartGoods);
		detailStock.setGoods_detail_stock_quantity(detailStock.getGoods_detail_stock_quantity()-stock.getGoods_stock_stock_quantity());
		orderDao.reduceDetailStock(detailStock);

	}
	@Override
	   public List<OrderVO> orderEndPage(String order_merchant_serial) {
	      
	      return orderDao.orderEndPage(order_merchant_serial);
	   }

}
