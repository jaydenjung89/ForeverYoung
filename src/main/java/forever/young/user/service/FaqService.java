package forever.young.user.service;

import java.util.List;

import forever.young.user.vo.FaqVO;
import forever.young.user.vo.Pagination;

public interface FaqService {
	List<FaqVO> getfaqList(Pagination pagination);
	public int getFaqListCnt();
}
