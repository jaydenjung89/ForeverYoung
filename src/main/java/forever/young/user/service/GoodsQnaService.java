package forever.young.user.service;

import java.util.List;

import forever.young.user.vo.GoodsQnaVO;
import forever.young.user.vo.ItemPageVO;
import forever.young.user.vo.UserVO;

public interface GoodsQnaService {
	List<GoodsQnaVO> getGoodsQnaUserList(GoodsQnaVO vo);
	
	public UserVO getUser(UserVO vo);
	
	public ItemPageVO getItemPage(ItemPageVO vo);
	
	List<GoodsQnaVO> getGoodsQnaList(GoodsQnaVO vo);
	
	public int insertGoodsQna(GoodsQnaVO vo);
	public int updateGoodsQna(GoodsQnaVO vo);
	public int deleteGoodsQna(GoodsQnaVO vo);
	
	public GoodsQnaVO getGoodsQnaContent(GoodsQnaVO vo);
	
	public String getQnaCount(int serial);
	public List<GoodsQnaVO> getGoodsQnaList1(GoodsQnaVO vo);
	
	//마이페이지 상품 리스트
	public List<GoodsQnaVO> getGoodsQnaList2(GoodsQnaVO vo);
	
}
