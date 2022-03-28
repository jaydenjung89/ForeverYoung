package forever.young.user.controller;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import forever.young.user.service.HeaderService;
import forever.young.vo.CategoryFirstVO;
import forever.young.vo.CategorySecondVO;
import forever.young.vo.CategoryThirdVO;
import forever.young.vo.ProductVO;

@Controller
public class RankingController {
	
	@Autowired
	private HeaderService headerService;
	@Autowired
	private SqlSessionTemplate sqlSession; 

	@RequestMapping("ranking.do")
	public String categoryGoods2(ProductVO product, Model model) {
		if (product.getSort() == null || product.getSort() == "") {
			product.setSort("0");
		}
		List<ProductVO> rankingProductList = headerService.getRankingProduct(product);
		
		for (ProductVO products : rankingProductList) {
			if (products.getGoods_detail_promotion_serial() > 0) {
				products.setGoods_detail_discountrate(
						products.getGoods_detail_discountrate() + (10 * products.getGoods_detail_promotion_serial()));
			}
			products.setCategory_goods_name(products.getCategory_goods_name().replaceAll("'", "`"));
		}
		CategoryFirstVO categoryRoot = sqlSession.selectOne("CategoryDAO.getCategoryRoot", product);
		CategorySecondVO categorySubRoot = sqlSession.selectOne("CategoryDAO.getCategorySubRoot", product);
		List<CategoryFirstVO> categoryFirstList = headerService.getCategoryFirst();
		List<CategorySecondVO> categorySecond = sqlSession.selectList("CategoryDAO.getCategorySecond", categoryRoot);
		List<CategoryThirdVO> categoryThird = sqlSession.selectList("CategoryDAO.getCategoryThird", categorySubRoot);

		model.addAttribute("rankingProductList", rankingProductList);
		model.addAttribute("categoryFirst", categoryRoot);
		model.addAttribute("categoryFirstList", categoryFirstList);
		model.addAttribute("categorySecond", categorySecond);
		model.addAttribute("categorySe", categorySubRoot);
		model.addAttribute("categoryThird", categoryThird);
		model.addAttribute("firstSerial", product.getCategory_first_serial());
		model.addAttribute("secondSerial", product.getCategory_second_serial());
		model.addAttribute("thirdSerial", product.getCategory_third_serial());
		model.addAttribute("itemCount", rankingProductList.size());
		model.addAttribute("sort", product.getSort());
		
		return "ranking/ranking_salerank";
	}
	
	@RequestMapping("reviewbest.do")
	public String reviewbest() {
		return "ranking/ranking_reviewbest";
	}
	@RequestMapping("liverank.do")
	public String liverank() {
		return "ranking/ranking_liverank";
	}
	
}
