package forever.young.user.service;

import java.util.List;

import forever.young.vo.CategoryFirstVO;
import forever.young.vo.ProductVO;

public interface HeaderService {
	List<CategoryFirstVO> getCategoryFirst();
	List<ProductVO> getCategoryProduct(ProductVO product);
	List<ProductVO> getSearchGoods(String searchKeyword);
	List<ProductVO> getRankingProduct(ProductVO product);
	List<ProductVO> getOhTeukProduct(ProductVO product);
	List<ProductVO> getSaleProduct(ProductVO product);
	List<ProductVO> getBrandNewProduct(ProductVO product);
}
