package three.aws.wo.admin.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.admin.service.APageService;
import three.aws.wo.admin.vo.BannerVO;

@Controller
public class AdminPageController {
	
	@Inject
	private APageService aPageService;
	
	public int index = 1;
	
	@RequestMapping("/banner_mng.admin")
	public String tobanner_mng(Model model) {
		System.out.println("banner_mng");
//		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
//    	//���ϴ� ������ ���� ����
//		String datte = simpleDateFormat.format(date); 
//    	//������ �������� ��ȯ 
//		model.addAttribute("nowDate",datte); //now date
		
		List<BannerVO> bannerList = aPageService.bannerList();
		for(BannerVO vo : bannerList) {
			vo.setStartdate(simpleDateFormat.format(vo.getB_startdate()));
			vo.setEnddate(simpleDateFormat.format(vo.getB_enddate()));
		}
		model.addAttribute("bannerList",bannerList);
		
		return "/page/banner_mng";
	}
	
	@RequestMapping("/bannerAdd.admin")
	public String asda(Model model) {
//		Date date = new Date();
//		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
//    	//���ϴ� ������ ���� ����
//		String datte = simpleDateFormat.format(date);
//		model.addAttribute("nowDate",datte);
		model.addAttribute("inputIndex",index);
		index++;
		return "/page/banner_input";
	}
	
	@ResponseBody
	@RequestMapping("/deleteBanner.admin")
	public int deleteBanner(@RequestBody HashMap<String,String> param) {
		int result = 0;
		int b_seq = Integer.parseInt(param.get("b_seq"));
		try {
			aPageService.deleteBanner(b_seq);
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/updateBanner.admin")
	public int updateBanner(@RequestBody HashMap<String,Object> param) {
		int result = 0;
		System.out.println(param);
		if(param.get("b_image").equals("no")) {
			param.remove("b_image");
		}
		if((boolean)param.get("b_settime")==false){
			param.remove("b_startdate");
			param.remove("b_enddate");
		}
		System.out.println(param);
		try {
			aPageService.updateBanner(param);
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/insertBanner.admin")
	public int insertBanner(@RequestBody HashMap<String,Object> param) {
		int result = 0;
		System.out.println(param);
		if((boolean)param.get("b_settime")==false){
			param.remove("b_startdate");
			param.remove("b_enddate");
		}
		System.out.println(param);
		try {
			aPageService.insertBanner(param);
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	@GetMapping("/searchbar_mng.admin")
	public String tosearchbar_mng() {
		System.out.println("searchbar_mng");
		return "/page/searchbar_mng";
	}

	@GetMapping("/drink_recom.admin")
	public String todrink_recom() {
		System.out.println("drink_recom");
		return "/page/drink_recom";
	}




}
