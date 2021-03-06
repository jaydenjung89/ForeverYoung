package forever.young.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forever.young.user.dao.CartDAO;
import forever.young.user.vo.CartVO;
import forever.young.user.vo.user_address_listVO;
import forever.young.vo.ProductVO;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartDAO cartDao;
	
	@Override
	public List<CartVO> getCartList(String userId) {
		return cartDao.getCartList(userId);
	}

	@Override
	public ProductVO getCartItem(CartVO cartVO) {
		ProductVO item=cartDao.getCartItem(cartVO);
		return item;
	}

	@Override
	public void insertCartItem(CartVO cartVO) {
		cartDao.insertCartItem(cartVO);

	}

	@Override
	public void updateCartItem(CartVO cartVO) {
		cartDao.updateCartItem(cartVO);

	}

	@Override
	public void deleteCartItem(CartVO cartVO) {
		cartDao.deleteCartItem(cartVO);

	}

	@Override
	public boolean overlapCartItem(List<CartVO> cartList, CartVO cartVO) throws IllegalArgumentException {
		CartVO item=new CartVO();
		for(CartVO cartItem:cartList) {
			if(cartItem.getCategory_goods_serial()==cartVO.getCategory_goods_serial()) {
				CartVO checkStock=new CartVO();
				checkStock.setCategory_goods_serial(cartItem.getCategory_goods_serial());
				checkStock.setGoods_cart_count(cartItem.getGoods_cart_count()+cartVO.getGoods_cart_count());
				if(!isStock(checkStock)) {
					throw new IllegalArgumentException("재고수량을 넘김");
				}
				item=cartItem;
				item.setGoods_cart_count(cartItem.getGoods_cart_count()+cartVO.getGoods_cart_count());
				cartDao.updateCartItem(item);
				return true;
			}
		}
		return false;
	}

	@Override
	public user_address_listVO getDefaultAddress(String userId) {
		return cartDao.getDefaultAddress(userId);
	}

	@Override
	public void allCheckItem(CartVO cartVO) {
		cartDao.allCheckItem(cartVO);

	}

	@Override
	public void updateCheckStatus(CartVO cartVO) {
		cartDao.updateCheckStatus(cartVO);

	}

	@Override
	public List<CartVO> getPurchaseGoods(String userId) {
		return cartDao.getPurchaseGoods(userId);
	}

	@Override
	public Boolean isStock(CartVO cartVO) {
		int stock=cartDao.getGoodsStock(cartVO).getGoods_detail_stock_quantity();
		if(cartVO.getGoods_cart_count()>stock)
			return false;
		else
			return true;
	}

}
