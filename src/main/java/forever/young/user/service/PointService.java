package forever.young.user.service;

import java.util.List;

import forever.young.user.vo.User_order_listVO;

public interface PointService {
	List<User_order_listVO> pointList(String user_id);
	public Integer totalPoint(String user_id);
}
