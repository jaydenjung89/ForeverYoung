package forever.young.admin.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import forever.young.admin.service.AdminService;
import forever.young.admin.vo.AdminBannerVO;
import s3.AwsS3;

@Controller
public class AdminBannerController {
	private String url = "https://fyawsbucket.s3.ap-northeast-2.amazonaws.com/";
	
	@Autowired
	private AdminService service;

	//DB
	@Autowired
	private AwsS3 awsS3;
	
	//배너 리스트
	@RequestMapping("admin_bannerList.mdo")
	public String adminBannerList(Model model) throws Exception {
		model.addAttribute("bannerList", service.getBannerList());
		return "banner/admin_bannerList";
	}
	
	//관리자 배너 등록페이지
	@RequestMapping("admin_bannerWrite.mdo")
	public String adminBannerWrite()throws Exception {
		return "banner/admin_bannerWrite";
	}
	
	//관리자 배너 제출페이지
	@RequestMapping("admin_bannerInsert.mdo")
	public String adminBannerInsert(MultipartFile uploadFile, AdminBannerVO banner) throws Exception {
		try {
			String key = "banner/"+uploadFile.getOriginalFilename();
			InputStream is = uploadFile.getInputStream();
			String contentType = uploadFile.getContentType();
			long contentLength = uploadFile.getSize();
			awsS3.upload(is, key, contentType, contentLength);
			
			banner.setBanner_filepath(url + key);
			service.insertBanner(banner);
		}catch(IOException e) {
			e.printStackTrace();
		}
		return "redirect:admin_bannerList.mdo";
	}
	
	//관리자 배너 세부사항페이지
	@RequestMapping("/admin_banner.mdo")
	public String adminBanner(Model model, AdminBannerVO banner) throws Exception {
		model.addAttribute("banner", service.getBanner(banner));
		
		return "banner/admin_banner";
	}
	
	//관리자 배너 삭제페이지
	@RequestMapping("admin_bannerDelete.mdo")
	public String adminBannerDelete(AdminBannerVO banner) throws Exception {
		boolean result = false;
		int success = 0;
		
		//1. db에서 삭제하고싶은 데이터를 가져온다.
		AdminBannerVO bannerVO = service.getBanner(banner);
		
		//2. 데이터에서 파일 경로를 delete의 경로에 담아버린다.
		String deletePath = bannerVO.getBanner_filepath();
		
		//3. deletePath에 있는 데이터와 db에 있는 모든 경로와 비교해서 일치하는 경로를 삭제
		List<AdminBannerVO> bannerList = service.getBannerList();
		
		for(AdminBannerVO bann : bannerList) {
			System.out.println("bann : " + bann.getBanner_filepath());
			System.out.println("deletepath : " + deletePath);
			
			if(bann.getBanner_filepath().equals(deletePath)) {
				success = service.deleteBanner(banner);
				result = true;
				
				break;
			}
		}
		
		if(!result) {
			String deleteKey = bannerVO.getBanner_filepath().substring(49);
			awsS3.delete(deleteKey);
			
			success = service.deleteBanner(banner);
			
			if(success != 0) {
				return "redirect:admin_bannerList.mdo";
			}else {
				return "redirect:admin_banner.mdo";
			}
		}else {
			if(success != 0) {
				return "redirect:admin_bannerList.mdo";
			}else {
				return "redirect:admin_banner.mdo";
			}
		}
	}
	
	//관리자 배너 수정
	@RequestMapping("admin_bannerUpdate.mdo")
	public String adminBannerUpdate(MultipartFile uploadFile,AdminBannerVO banner) throws Exception {
		if(uploadFile.getSize() != 0) {
			//교체하고 싶은 이미지가 있을 경우 0이 아니므로 s3에 있는 이미지를 삭제
			AdminBannerVO bannerVO = service.getBanner(banner);
			String deleteKey = bannerVO.getBanner_filepath().substring(49);
			awsS3.delete(deleteKey);
			
			//새로운 이미지를 s3에 등록
			try {
				String key = "banner/"+uploadFile.getOriginalFilename();
				InputStream is = uploadFile.getInputStream();
				String contentType = uploadFile.getContentType();
				long contentLength = uploadFile.getSize();
				awsS3.upload(is, key, contentType, contentLength);
				
				banner.setBanner_filepath(url + key);
			}catch(IOException e) {
				e.printStackTrace();
			}
			
			//교체하고싶은 이미지가 있을 경우 이미지를 먼저 지우고
			//새로운 이미지를 등록한 후에 새로운 이미지 경로를 포함하여 db에 저장
			int success = 0;
			success = service.updateBanner1(banner);
			
			if(success != 0) {
				return "redirect:admin_bannerList.mdo";
			}else {
				return "redirect:admin_banner.mdo";
			}
		}else {
			int success = 0;
			success = service.updateBanner2(banner);
			
			if(success != 0) {
				return "redirect:admin_bannerList.mdo";
			}else {
				return "redirect:admin_banner.mdo";
			}
		}
	}
}