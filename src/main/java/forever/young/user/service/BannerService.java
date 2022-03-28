package forever.young.user.service;

import java.util.List;

import forever.young.user.vo.BannerVO;
import forever.young.vo.ProductVO;

public interface BannerService {
	//Banner 불러오기
	List<BannerVO> getBannerList()throws Exception;
	//banner 상품가져오기
    List<ProductVO> getCategoryProduct(ProductVO product) throws Exception;
}
