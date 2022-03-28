package forever.young.user.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forever.young.user.dao.BannerDAO;
import forever.young.user.dao.HeaderDAO;
import forever.young.user.vo.BannerVO;
import forever.young.vo.ProductVO;

@Service
public class BannerServiceImpl implements BannerService {
	private final BannerDAO dao;
	@Autowired
	private HeaderDAO headerDAO;

	@Inject
	public BannerServiceImpl(BannerDAO dao) {
		this.dao = dao;
	}
	
	//Banner 불러오기
	@Override
	public List<BannerVO> getBannerList() throws Exception {
		// TODO Auto-generated method stub
		return dao.getBanner();
	}
	@Override
	public List<ProductVO> getCategoryProduct(ProductVO product) throws Exception {
		// TODO Auto-generated method stub
		return headerDAO.getProduct(product);
	}
	
}
