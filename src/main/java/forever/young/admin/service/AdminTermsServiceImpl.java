package forever.young.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forever.young.admin.dao.AdminTermsDAO;
import forever.young.admin.vo.AdminTermsVO;

@Service
public class AdminTermsServiceImpl implements AdminTermsService {

	@Autowired
	private AdminTermsDAO admintermsdao;

	// 약관 리스트
	@Override
	public List<AdminTermsVO> getTermslist() {
		return admintermsdao.getTermslist();
	}

	@Override
	public int updateTerms(AdminTermsVO admintermsvo) {
		return admintermsdao.updateTerms(admintermsvo);
	}

	@Override
	public int insertTerms(AdminTermsVO admintermsvo) {
		return admintermsdao.insertTerms(admintermsvo);
	}

	@Override
	public int deleteTerms(AdminTermsVO admintermsvo) {
		return admintermsdao.deleteTerms(admintermsvo);
	}
	
	// 약관 정보
	@Override
	public AdminTermsVO getTerms(AdminTermsVO admintermsvo) {
		return admintermsdao.getTerms(admintermsvo);
	}
}
