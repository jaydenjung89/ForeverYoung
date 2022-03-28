package forever.young.user.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import forever.young.user.vo.BannerVO;
import forever.young.vo.ProductVO;

@Repository
public class BannerDAO {
	private final static String NAMESPACE = "bannerDAO";
	
	private SqlSessionTemplate sqlSession;
	
	@Inject
	public void bannerDAO(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//Banner 불러오기
	public List<BannerVO> getBanner() throws Exception {
		return sqlSession.selectList(NAMESPACE + ".getBannerList");
	}
	//banner 상품가져오기
    public List<ProductVO> getProduct(ProductVO product) throws Exception{
       return sqlSession.selectList("CategoryDAO.getCategoryProductList", product);
    }
}
