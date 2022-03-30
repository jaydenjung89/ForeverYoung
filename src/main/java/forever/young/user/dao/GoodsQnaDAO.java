package forever.young.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import forever.young.user.vo.GoodsQnaVO;
import forever.young.user.vo.ItemPageVO;
import forever.young.user.vo.UserVO;

@Repository
public class GoodsQnaDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public UserVO getUser(UserVO vo) {
		return sqlSession.selectOne("GoodsQnaDAO.getUser", vo);
	}
	public ItemPageVO getItemPage(ItemPageVO vo) {
		return sqlSession.selectOne("GoodsQnaDAO.getItemPage",vo);
	}
	public List<GoodsQnaVO> getGoodsQnaList(GoodsQnaVO vo){
		return sqlSession.selectList("GoodsQnaDAO.getQnaList", vo);
	}
	public int insertGoodsQna(GoodsQnaVO vo) {
		return sqlSession.insert("GoodsQnaDAO.insertGoodsQna", vo);
	}
	public int updateGoodsQna(GoodsQnaVO vo) {
		return sqlSession.update("GoodsQnaDAO.updateGoodsQna", vo);
	}
	public int deleteGoodsQna(GoodsQnaVO vo) {
		return sqlSession.delete("GoodsQnaDAO.deleteGoodsQna", vo);
	}
	public GoodsQnaVO getGoodsQnaContent(GoodsQnaVO vo) {
		return sqlSession.selectOne("GoodsQnaDAO.getGoodsQnaContent", vo);
	}
	public List<GoodsQnaVO> GoodsQnaUserList(GoodsQnaVO vo){
		return sqlSession.selectList("GoodsQnaDAO.GoodsQnaUserList", vo);
	}
	public String getGoodsImage(int goodsSerial) {
		return sqlSession.selectOne("GoodsQnaDAO.getGoodsImage", goodsSerial);
	}
	public String getQnaCount(int goodsSerial) {
		return sqlSession.selectOne("GoodsQnaDAO.getQnaCount", goodsSerial);
	}
	public List<GoodsQnaVO> getGoodsQnaList1(GoodsQnaVO vo){
		return sqlSession.selectList("GoodsQnaDAO.getQnaList1", vo);
	}
	
//	마이페이지 상품 굿즈 페이지 
	public List<GoodsQnaVO> getGoodsQnaList2(GoodsQnaVO vo){
      return sqlSession.selectList("GoodsQnaDAO.getQnaList2", vo);
   }
	
}
