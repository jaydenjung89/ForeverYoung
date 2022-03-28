package forever.young.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import forever.young.vo.CategoryFirstVO;
import forever.young.vo.ProductVO;

@Repository
public class HeaderDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public List<CategoryFirstVO> getCategoryFirst(){
		return sqlSession.selectList("CategoryDAO.getCategoryFirst");
	}
	public List<ProductVO> getProduct(ProductVO product){
		return sqlSession.selectList("CategoryDAO.getCategoryProductList", product);
	}
	public List<ProductVO> getSearch(String searchKeyword){
		return sqlSession.selectList("CategoryDAO.getSearchList", searchKeyword);
	}
	public List<ProductVO> getRankingProduct(ProductVO product){
	      return sqlSession.selectList("CategoryDAO.getRankingProduct", product);
	   }
	   
	   public List<ProductVO> getOhTeukProduct(ProductVO product){
		   
	      return sqlSession.selectList("CategoryDAO.getOhTeukProduct", product);
	   }
	   
	   public List<ProductVO> getSaleProduct(ProductVO product){
	      return sqlSession.selectList("CategoryDAO.getSaleProduct", product);
	   }

	   public List<ProductVO> getBrandNewProduct(ProductVO product){
		   
	      return sqlSession.selectList("CategoryDAO.getBrandNewProduct", product);
	   }
}
