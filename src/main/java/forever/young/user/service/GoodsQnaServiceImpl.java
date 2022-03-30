package forever.young.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forever.young.user.dao.GoodsQnaDAO;
import forever.young.user.vo.GoodsQnaVO;
import forever.young.user.vo.ItemPageVO;
import forever.young.user.vo.UserVO;

@Service
public class GoodsQnaServiceImpl implements GoodsQnaService {

	@Autowired
	private GoodsQnaDAO goodsqnaDao;
	@Override
	public List<GoodsQnaVO> getGoodsQnaUserList(GoodsQnaVO vo) {
		List<GoodsQnaVO> qnaList=goodsqnaDao.GoodsQnaUserList(vo);
		for(GoodsQnaVO qna:qnaList) {
			String image=goodsqnaDao.getGoodsImage(qna.getCategory_goods_serial());
			qna.setCategory_goods_thum_img(image);
		}
		
		return qnaList;
	}

	@Override
	public UserVO getUser(UserVO vo) {
		return goodsqnaDao.getUser(vo);
	}

	@Override
	public ItemPageVO getItemPage(ItemPageVO vo) {
		return goodsqnaDao.getItemPage(vo);
	}

	@Override
	public List<GoodsQnaVO> getGoodsQnaList(GoodsQnaVO vo) {
		return goodsqnaDao.getGoodsQnaList(vo);
	}

	@Override
	public int insertGoodsQna(GoodsQnaVO vo) {
		return goodsqnaDao.insertGoodsQna(vo);
	}

	@Override
	public int updateGoodsQna(GoodsQnaVO vo) {
		return goodsqnaDao.updateGoodsQna(vo);
	}

	@Override
	public int deleteGoodsQna(GoodsQnaVO vo) {
		return goodsqnaDao.deleteGoodsQna(vo);
	}

	@Override
	public GoodsQnaVO getGoodsQnaContent(GoodsQnaVO vo) {
		return goodsqnaDao.getGoodsQnaContent(vo);
	}

	@Override
	public String getQnaCount(int serial) {
		return goodsqnaDao.getQnaCount(serial);
	}

	@Override
	public List<GoodsQnaVO> getGoodsQnaList1(GoodsQnaVO vo) {
		// TODO Auto-generated method stub
		return goodsqnaDao.getGoodsQnaList1(vo);
	}

	//마이페이지 상품 리스트
	@Override
	   public List<GoodsQnaVO> getGoodsQnaList2(GoodsQnaVO vo) {
	      // TODO Auto-generated method stub
	      return goodsqnaDao.getGoodsQnaList2(vo);
	   }
}
