package forever.young.user.service;

import java.util.List;

import forever.young.user.vo.ItemPageVO;
import forever.young.vo.CategoryFirstVO;

public interface ItemPageService {
	public ItemPageVO getItemPage(ItemPageVO vo);
	List<ItemPageVO> getCategoryItemPage(ItemPageVO vo);
	List<CategoryFirstVO> getCategoryFirst();
}
