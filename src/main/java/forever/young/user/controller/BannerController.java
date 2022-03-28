package forever.young.user.controller;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import forever.young.user.service.BannerService;
import forever.young.user.service.HeaderService;
import forever.young.user.vo.BannerVO;
import forever.young.vo.CategoryFirstVO;
import forever.young.vo.CategorySecondVO;
import forever.young.vo.CategoryThirdVO;
import forever.young.vo.ProductVO;

@Controller
public class BannerController {
	private static final Logger logger = LoggerFactory.getLogger(BannerController.class);
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public BannerService service;
	
	@Autowired
	private HeaderService headerService;

	@RequestMapping("/main.do")
	public String banner(Model model,ProductVO product) throws Exception {
		logger.info("banner 가져오기");
		
		
		List<BannerVO> banner = service.getBannerList();
		model.addAttribute("banners",banner);
		
		
		
		model.addAttribute("bannerCount", banner.size());
		
		
		
		
		
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
	     
		return "main/main";
	}
	
}
