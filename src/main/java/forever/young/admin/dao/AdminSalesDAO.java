package forever.young.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import forever.young.admin.vo.AdminSalesVO;

@Repository
public class AdminSalesDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 오늘매출
	public List<AdminSalesVO> getTodaySales(AdminSalesVO adminsalesvo) {
		return sqlSession.selectList("AdminSalesDAO.getTodaySales");
	}

	// 일매출
	public List<AdminSalesVO> getDaySales(AdminSalesVO adminsalesvo) {
		return sqlSession.selectList("AdminSalesDAO.getDaySales");
	}

	// 상품별 매출
	public List<AdminSalesVO> getSales(AdminSalesVO adminsalesvo) {
		return sqlSession.selectList("AdminSalesDAO.getSales");
	}

	// 월매출
	public List<AdminSalesVO> getMonthSales(AdminSalesVO adminsalesvo) {
		return sqlSession.selectList("AdminSalesDAO.getMonthSales");
	}
	
}
