package forever.young.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import forever.young.user.service.HeaderService;
import forever.young.vo.CategoryFirstVO;
import forever.young.vo.CategorySecondVO;
import forever.young.vo.CategoryThirdVO;
import forever.young.vo.ProductVO;

@Controller
public class HeaderController {
	
	@Autowired
	private HeaderService headerService;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@RequestMapping(value="categoryData.do", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<CategoryFirstVO> getCategory(){
		
		List<CategoryFirstVO> categoryFirstList=headerService.getCategoryFirst();
		for(CategoryFirstVO cf:categoryFirstList) {
			List<CategorySecondVO> categorySecond=sqlSession.selectList("CategoryDAO.getCategorySecond", cf);
			cf.setData(categorySecond);	
		}
		return categoryFirstList;
	}
	@RequestMapping("categoryItemPage.do")
	   public String categoryGoods(ProductVO product, Model model) {
	      if (product.getSort() == null || product.getSort() == "") {
	         product.setSort("0");
	      }
	      List<ProductVO> categoryProductList = headerService.getCategoryProduct(product);
	      for (ProductVO products : categoryProductList) {
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

	      model.addAttribute("categoryProductList", categoryProductList);
	      model.addAttribute("categoryFirst", categoryRoot);
	      model.addAttribute("categoryFirstList", categoryFirstList);
	      model.addAttribute("categorySecond", categorySecond);
	      model.addAttribute("categorySe", categorySubRoot);
	      model.addAttribute("categoryThird", categoryThird);
	      model.addAttribute("firstSerial", product.getCategory_first_serial());
	      model.addAttribute("secondSerial", product.getCategory_second_serial());
	      model.addAttribute("thirdSerial", product.getCategory_third_serial());
	      model.addAttribute("itemCount", categoryProductList.size());
	      model.addAttribute("sort", product.getSort());
	      return "category/categoryfirst";
	   }
	@RequestMapping("categoryItemPage2.do")
	public String categoryGoods2(ProductVO product, Model model) {
		if(product.getSort()==null||product.getSort()=="") {
			product.setSort("0");
		}
		List<ProductVO> categoryProductList=headerService.getCategoryProduct(product);
		for(ProductVO products:categoryProductList) {
			if(products.getGoods_detail_promotion_serial()>0) {
				products.setGoods_detail_discountrate(products.getGoods_detail_discountrate()+(10*products.getGoods_detail_promotion_serial()));
			}
			products.setCategory_goods_name(products.getCategory_goods_name().replaceAll("'", "`"));
		}
		CategoryFirstVO categoryRoot=sqlSession.selectOne("CategoryDAO.getCategoryRoot",product);
		CategorySecondVO categorySubRoot=sqlSession.selectOne("CategoryDAO.getCategorySubRoot", product);
		List<CategoryFirstVO> categoryFirstList=headerService.getCategoryFirst();
		List<CategorySecondVO> categorySecond=sqlSession.selectList("CategoryDAO.getCategorySecond", categoryRoot);
		List<CategoryThirdVO> categoryThird=sqlSession.selectList("CategoryDAO.getCategoryThird", categorySubRoot);
		
		model.addAttribute("categoryProductList", categoryProductList);
		model.addAttribute("categoryFirst", categoryRoot);
		model.addAttribute("categoryFirstList", categoryFirstList);
		model.addAttribute("categorySecond",categorySecond);
		model.addAttribute("categorySe", categorySubRoot);
		model.addAttribute("categoryThird", categoryThird);
		model.addAttribute("firstSerial", product.getCategory_first_serial());
		model.addAttribute("secondSerial", product.getCategory_second_serial());
		model.addAttribute("thirdSerial", product.getCategory_third_serial());
		model.addAttribute("itemCount", categoryProductList.size());
		model.addAttribute("sort", product.getSort());
	
		return "category/categorysecond";
	}
	@RequestMapping("searchItemPage.do")
	public String searchItemPage(String searchKeyword, Model model) {
		List<ProductVO> searchList=headerService.getSearchGoods(searchKeyword);
		for(ProductVO search:searchList) {
			search.setCategory_goods_name(search.getCategory_goods_name().replaceAll("'", "`"));
			
		}
		model.addAttribute("searchList", searchList);
		model.addAttribute("searchKeyword", searchKeyword);
		return "category/searchGoodsPage";
	}
}
