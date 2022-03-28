package forever.young.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forever.young.user.dao.HeaderDAO;
import forever.young.user.dao.ItemPageDAO;
import forever.young.user.vo.ItemPageVO;
import forever.young.vo.CategoryFirstVO;

@Service
public class ItemPageServiceImpl implements ItemPageService {
	
	@Autowired
	private ItemPageDAO itempageDAO;
	@Autowired
	private HeaderDAO headerDAO;
	
	@Override
	public ItemPageVO getItemPage(ItemPageVO vo) {
		return itempageDAO.getItemPage(vo);
	}

	@Override
	public List<ItemPageVO> getCategoryItemPage(ItemPageVO vo) {
		return itempageDAO.getCategoryItemPage(vo);
	}

	@Override
	public List<CategoryFirstVO> getCategoryFirst() {
		return headerDAO.getCategoryFirst();
	}

}
