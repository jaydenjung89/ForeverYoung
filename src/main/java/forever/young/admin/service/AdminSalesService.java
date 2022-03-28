package forever.young.admin.service;

import java.util.List;

import forever.young.admin.vo.AdminSalesVO;

public interface AdminSalesService {
	
	public List<AdminSalesVO> getTodaySales(AdminSalesVO adminsalesvo);
	
	public List<AdminSalesVO> getDaySales(AdminSalesVO adminsalesvo);
	
	public List<AdminSalesVO> getSales(AdminSalesVO adminsalesvo);

	public List<AdminSalesVO> getMonthSales(AdminSalesVO adminsalesvo);
	
}
