package forever.young.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forever.young.admin.dao.AdminSalesDAO;
import forever.young.admin.vo.AdminSalesVO;
import forever.young.admin.vo.DateVO;

@Service
public class AdminSalesServiceImpl implements AdminSalesService {

	@Autowired
	private AdminSalesDAO adminsalesdao;

	@Override
	public List<AdminSalesVO> getTodaySales(AdminSalesVO adminsalesvo) {
		return adminsalesdao.getTodaySales(adminsalesvo);
	}

	@Override
	public List<AdminSalesVO> getDaySales(AdminSalesVO adminsalesvo) {
		return adminsalesdao.getDaySales(adminsalesvo);
	}

	@Override
	public List<AdminSalesVO> getSales(AdminSalesVO adminsalesvo) {
		return adminsalesdao.getSales(adminsalesvo);
	}

	@Override
	public List<AdminSalesVO> getMonthSales(AdminSalesVO adminsalesvo) {
		return adminsalesdao.getMonthSales(adminsalesvo);
	}

	@Override
	public List<AdminSalesVO> getDateSales(DateVO vo) {
		return adminsalesdao.getDateSales(vo);
	}
	
	@Override
	public List<AdminSalesVO> getCateSales(AdminSalesVO adminsalesvo) {
		return adminsalesdao.getCateSales(adminsalesvo);
	}
}
