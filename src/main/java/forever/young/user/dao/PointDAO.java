package forever.young.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import forever.young.user.vo.User_order_listVO;

@Repository
public class PointDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<User_order_listVO> pointList(String user_id){
		return sqlSession.selectList("pontDAO.pointList", user_id);
	}
	public Integer totalPoint(String user_id) {
		return sqlSession.selectOne("pointDAO.totalPoint", user_id);
	}
}
