package forever.young.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import forever.young.user.vo.ItemPageVO;

@Repository
public class ItemPageDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ItemPageVO getItemPage(ItemPageVO vo) {
		return sqlSession.selectOne("ItemPageDAO.getItemPage", vo);
		
	}
	
	public List<ItemPageVO> getCategoryItemPage(ItemPageVO vo){
		return sqlSession.selectList("ItemPageDAO.getCategoryItemPage", vo);
	}
	
}
