package forever.young.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import forever.young.admin.service.AdminService;
import forever.young.admin.vo.AdminRegistVO;
import forever.young.vo.ProductVO;

@SessionAttributes("category_goods_serial")
@Controller
public class AdminProductController {
	private String url = "https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/";

	// DB
	//@Autowired
	//private AwsS3 awsS3;

	@Autowired
	private AdminService adminService;

	// 상품목록 리스트
	@RequestMapping("admin_product.mdo")
	public String getGoodsList(AdminRegistVO regist, Model model) {
		List<AdminRegistVO> productList = adminService.goodsList(regist);
//		for (AdminRegistVO vo : productList) {
//			if (vo.getGoods_detail_stock_quantity() < 15) {
//				model.addAttribute("notification", true);
//				break;
//			}
//		}
		model.addAttribute("goodsList", productList);
		System.out.println(productList);
		return "dashboard/product/product";
	}

	// 상품 삭제
	@RequestMapping("deleteGoods.mdo")
	public String deleteGoods(AdminRegistVO regist) {
		System.out.println("상품삭제 메서드 실행");
		int success = 0;
		success = adminService.deleteGoods(regist);
		if (success != 0) {
			return "redirect:admin_product.mdo";
		} else {
			return "redirect:admin_product.mdo";
		}
	}

	// 상품 상세 화면 이동
	@RequestMapping("updateGoodsPage.mdo")
	public String updateGoodsPage(Model model, ProductVO product) {
		model.addAttribute("categoryFirst", adminService.getCategoryFirstList(product));
		model.addAttribute("categorySecond", adminService.getCategorySecondList(product));
		model.addAttribute("categoryThird", adminService.getCategoryThirdList(product));
		model.addAttribute("category_goods_serial", product.getCategory_goods_serial());

		ProductVO getProduct = adminService.getProduct(product);
		model.addAttribute("getProduct", getProduct);
		ProductVO getProductDetail = adminService.getProductDetail(product);
		model.addAttribute("getProductDetail", getProductDetail);
		return "dashboard/product/productWrite";
	}

	// 상품 수정
//	@RequestMapping("updateGoods.mdo")
//	public String updateGoods(MultipartFile uploadFile,AdminRegistVO regist, ProductVO product) {
//		adminService.updateGoods(regist);
//		adminService.updateGoodsDetail(regist);
//		
//		
//		if(uploadFile.getSize() != 0) {
//			//교체하고 싶은 이미지가 있을 경우 0이 아니므로 s3에 있는 이미지를 삭제
//			ProductVO adminRegist = adminService.getProduct(product);
//			String deleteKey = adminRegist.getCategory_goods_main_img().substring(49);
//			awsS3.delete(deleteKey);
//			
//			//새로운 이미지를 s3에 등록
//			try {
//				String key = "product/"+uploadFile.getOriginalFilename();
//				InputStream is = uploadFile.getInputStream();
//				String contentType = uploadFile.getContentType();
//				long contentLength = uploadFile.getSize();
//				awsS3.upload(is, key, contentType, contentLength);
//				
//				System.out.println("성공");
//				
//				adminRegist.setCategory_goods_main_img(url + key);
//			}catch(IOException e) {
//				e.printStackTrace();
//			}
//			
//			//교체하고싶은 이미지가 있을 경우 이미지를 먼저 지우고
//			//새로운 이미지를 등록한 후에 새로운 이미지 경로를 포함하여 db에 저장
//			int success = 0;
//			success = adminService.updateGoods(regist);
//			
//			if(success != 0) {
//				return "redirect:admin_product.mdo";
//			}else {
//				return "redirect:admin_product.mdo";
//			}
//		}else {
//			int success = 0;
//			success = adminService.updateGoods(regist);
//			
//			if(success != 0) {
//				return "redirect:admin_product.mdo";
//			}else {
//				return "redirect:admin_product.mdo";
//			}
//		}
//	}

	// 상품 수정
	@RequestMapping("updateGoods.mdo") // 메인 카테고리 세부사항에서 수정하는거 봐야함
	public String categoryGoodsUpdate(AdminRegistVO regist, ProductVO product
			/*@RequestParam("category_goods_main_img") MultipartFile file1,
			@RequestParam("category_goods_thum_img") MultipartFile file2,
			@RequestParam("category_goods_detail") MultipartFile file3*/) {
		adminService.updateGoods(regist);
		adminService.updateGoodsDetail(regist);

//		int success = 0;
//		String key1 = null, key2 = null, key3 = null;
//		String deleteKey1, deleteKey2, deleteKey3;

		// S3작업
		// 메인 이미지 수정하고 싶은경우
//		if(file1.getSize() != 0) {
//			//기존 등록되어있던 이미지의 경로를 불러와서 S3에 이미지를 삭제한다.
////			deleteKey1 = adminService.getProduct(product).getCategory_goods_main_img().substring(49);
////			awsS3.delete(deleteKey1);
//			try {
//				key1 = "categoryGoods/" + file1.getOriginalFilename();
//				InputStream is = file1.getInputStream();
//				String contentType = file1.getContentType(); 
//				long contentLength = file1.getSize();
//				awsS3.upload(is, key1, contentType, contentLength);
//			}catch (IOException e) { e.printStackTrace();}
//			//db작업을 위한 값 
//			product.setCategory_goods_main_img(url+key1);
//		}
//		
//		//썸네일 이미지 수정하고 싶은경우
//		if(file2.getSize() !=0){
////			deleteKey2 = adminService.getProduct(product).getCategory_goods_thum_img().substring(49);
////			awsS3.delete(deleteKey2);
//			try {
//				key2 =  "categoryGoods/" + file2.getOriginalFilename();
//				InputStream is = file2.getInputStream();
//				String contentType = file2.getContentType(); 
//				long contentLength = file2.getSize();
//				awsS3.upload(is, key2, contentType, contentLength);
//			} catch (IOException e) { e.printStackTrace();}
//			//db작업을 위한 값 
//			product.setCategory_goods_thum_img(url+key2);
//		}
//		
//		//상품 정보 상세 이미지 수정하고 싶은경우
//		if(file3.getSize() !=0){
////			deleteKey3 = adminService.getProduct(product).getCategory_goods_detail().substring(49);
////			awsS3.delete(deleteKey3);
//			try {
//				key3 = "categoryGoods/" + file3.getOriginalFilename();
//				InputStream is = file3.getInputStream();
//				String contentType = file3.getContentType(); 
//				long contentLength = file3.getSize();
//				awsS3.upload(is, key3, contentType, contentLength);
//			} catch (IOException e) { e.printStackTrace();}
//			//db작업을 위한 값 
//			product.setCategory_goods_detail(url+key3);	
//		}
//		success = adminService.updateGoods(regist);	

//		if (success != 0) {
//			return "redirect:admin_product.mdo";
//		} else {
			return "redirect:admin_product.mdo";
//		}

	}

	@RequestMapping("insertGoodsPage.mdo")
	public String insertProductPage(Model model, ProductVO product) {
		model.addAttribute("categoryFirst", adminService.getCategoryFirstList(product));
		model.addAttribute("categorySecond", adminService.getCategorySecondList(product));
		model.addAttribute("categoryThird", adminService.getCategoryThirdList(product));
		model.addAttribute("category_goods_serial", product.getCategory_goods_serial());
		return "dashboard/product/insertProduct";
	}

	// 상품 카테고리 등록(Insert)
	@RequestMapping("insertGoods.mdo")
	public String insertProuct(ProductVO product
								/*
								 * @RequestParam("category_goods_main_img") MultipartFile file1,
								 * 
								 * @RequestParam("category_goods_thum_img") MultipartFile file2,
								 * 
								 * @RequestParam("category_goods_detail") MultipartFile file3,
								 */
		) {
//		int result1=0, result2=0;
//		String key1 = null, key2 = null, key3 = null;
//
//		// 메인 이미지 등록하는경우
//		if (file1.getSize() != 0) {
//			key1 = "categoryGoods/" + file1.getOriginalFilename();
//			product.setCategory_goods_main_img(url + key1);
//		}
//		// 썸네일 이미지 등록하는경우
//		if (file2.getSize() != 0) {
//			key2 = "categoryGoods/" + file2.getOriginalFilename();
//			product.setCategory_goods_thum_img(url + key2);
//		}
//		// 상세 이미지 등록하는경우
//		if (file3.getSize() != 0) {
//			key3 = "categoryGoods/" + file3.getOriginalFilename();
//			product.setCategory_goods_detail(url + key3);
//		}
//
//		// 3차 카테고리 상품 등록(db작업)
		adminService.insertGoods(product);
//		// 3차 카테고리 상품 디테일 등록(db작업)
		adminService.insertGoodsDetail(product);
		adminService.insertGoodsStock(product);
//
//		System.out.println(result1);
//		System.out.println(result2);
//		// db가 성공적으로 들어가면 s3작업 실행
//		if (result1 != 0 && result2 != 0) {
//			try {
//				// 메인
//				InputStream is = file1.getInputStream();
//				String contentType = file1.getContentType();
//				long contentLength = file1.getSize();
//				awsS3.upload(is, key1, contentType, contentLength);
//
//				// 썸네일
//				is = file2.getInputStream();
//				contentType = file2.getContentType();
//				contentLength = file2.getSize();
//				awsS3.upload(is, key2, contentType, contentLength);
//
//				// 상세
//				is = file3.getInputStream();
//				contentType = file3.getContentType();
//				contentLength = file3.getSize();
//				awsS3.upload(is, key3, contentType, contentLength);
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//
//		} // end if
		return "redirect:admin_product.mdo";
	}

}
