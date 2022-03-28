package forever.young.admin.service;

import java.util.List;

import forever.young.admin.vo.AdminTermsVO;

public interface AdminTermsService {
	
	// 약관리스트
	public List<AdminTermsVO> getTermslist();
	
	// 약관수정
	public int updateTerms(AdminTermsVO admintermsvo);

	// 약관등록
	public int insertTerms(AdminTermsVO admintermsvo);

	// 약관삭제
	public int deleteTerms(AdminTermsVO admintermsvo);
	
	// 약관정보
	public AdminTermsVO getTerms(AdminTermsVO admintermsvo);


}
