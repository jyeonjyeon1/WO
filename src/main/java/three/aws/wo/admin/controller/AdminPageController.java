package three.aws.wo.admin.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
//    	//원하는 데이터 포맷 지정
//		String datte = simpleDateFormat.format(date); 
//    	//지정한 포맷으로 변환 
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
//    	//원하는 데이터 포맷 지정
//		String datte = simpleDateFormat.format(date);
//		model.addAttribute("nowDate",datte);
		model.addAttribute("inputIndex",index);
		index++;
		return "/page/banner_input";
	}
}
