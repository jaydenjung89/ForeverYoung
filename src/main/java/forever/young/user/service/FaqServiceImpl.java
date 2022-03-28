package forever.young.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forever.young.user.dao.FaqDAO;
import forever.young.user.vo.FaqVO;
import forever.young.user.vo.Pagination;
@Service
public class FaqServiceImpl implements FaqService {

	@Autowired
	private FaqDAO faqDAO;

	@Override
	public List<FaqVO> getfaqList(Pagination pagination) {
		// TODO Auto-generated method stub
		return faqDAO.getBoard_faqList(pagination);
	}

	@Override
	public int getFaqListCnt() {
		
		return faqDAO.getFaqListCnt();
	}
	

}
