package forever.young.user.service;

import java.util.List;

import forever.young.user.vo.Pagination;
import forever.young.user.vo.ShippingVO;
import forever.young.user.vo.User_order_listVO;

public interface User_order_listService {
	List<User_order_listVO> getBoard(String user_id, Pagination pagination)throws Exception;
	public int getBoardListCnt() throws Exception;
	List<User_order_listVO> getDetail(User_order_listVO vo);
	ShippingVO getShipping(ShippingVO svo);
	public int oldPrice(String order_merchant_serial)throws Exception;
	public int dcPrice(String order_merchant_serial)throws Exception;
	public int point(String order_merchant_serial);
	User_order_listVO getDate(User_order_listVO vo);
	public int updateStatusOrder(User_order_listVO vo);
	
	List<User_order_listVO> getCacelList(String user_id, Pagination pagination)throws Exception;
   public int getCacelBoardListCnt() throws Exception;
}
