package forever.young.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forever.young.user.dao.HeaderDAO;
import forever.young.vo.CategoryFirstVO;
import forever.young.vo.CategorySecondVO;
import forever.young.vo.ProductVO;

@Service
public class HeaderServiceImpl implements HeaderService {
	
	@Autowired
	private HeaderDAO headerDAO;
	
	@Override
	public List<CategoryFirstVO> getCategoryFirst() {
		return headerDAO.getCategoryFirst();
	}

	@Override
	public List<ProductVO> getCategoryProduct(ProductVO product) {
		return headerDAO.getProduct(product);
	}

	@Override
	public List<ProductVO> getSearchGoods(String searchKeyword) {
		return headerDAO.getSearch(searchKeyword);
	}
	@Override
	   public List<ProductVO> getRankingProduct(ProductVO product){
	      return headerDAO.getRankingProduct(product);
	   }
	   
	   @Override
	   public List<ProductVO> getOhTeukProduct(ProductVO product){
		   
	      return headerDAO.getOhTeukProduct(product);
	   }
	   
	   @Override
	   public List<ProductVO> getSaleProduct(ProductVO product){
	      return headerDAO.getSaleProduct(product);
	   }

	   @Override
	   public List<ProductVO> getBrandNewProduct(ProductVO product){
		   
	      return headerDAO.getBrandNewProduct(product);
	   }
}
