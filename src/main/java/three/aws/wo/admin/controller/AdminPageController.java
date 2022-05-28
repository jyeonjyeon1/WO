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
import three.aws.wo.user.vo.SearchKeywordVO;

@Controller
public class AdminPageController {
	
	@Inject
	private APageService aPageService;
	
	public int index = 1;
	public int keyindex = 1;
	
	@RequestMapping("/banner_mng.admin")
	public String tobanner_mng(Model model) {
		System.out.println("banner_mng");
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
		
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

	@RequestMapping("/drink_recom.admin")
	public String todrink_recom(Model model) {
		List<BannerVO> todayDrinkList = aPageService.todayDrinkList();
		model.addAttribute("todayDrinkList",todayDrinkList);
		System.out.println("drink_recom");
		return "/page/drink_recom";
	}

	@ResponseBody
	@RequestMapping("/deleteTodayDrink.admin")
	public int deleteTodayDrink(@RequestBody HashMap<String,String> param) {
		int result = 0;
		int td_seq = Integer.parseInt(param.get("td_seq"));
		try {
			aPageService.deleteTodayDrink(td_seq);
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/updateTodayDrink.admin")
	public int updateTodayDrink(@RequestBody HashMap<String,Object> param) {
		int result = 0;
		System.out.println(param);
		if(param.get("td_image").equals("no")) {
			param.remove("td_image");
		}
		System.out.println(param);
		try {
			aPageService.updateTodayDrink(param);
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@RequestMapping("/addTodayDrink.admin")
	public String addTodayDrink(Model model) {
		model.addAttribute("inputIndex",index);
		index++;
		return "/page/drink_input";
	}
	
	@ResponseBody
	@RequestMapping("/insertTodayDrink.admin")
	public int insertTodayDrink(@RequestBody HashMap<String,Object> param) {
		int result = 0;
		System.out.println(param);
		try {
			aPageService.insertTodayDrink(param);
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@RequestMapping("/searchbar_mng.admin")
	public String tosearchbar_mng(Model model) {
		System.out.println("searchbar_mng");
		List<SearchKeywordVO> searchKeywordList = aPageService.searchKeywordList();
		model.addAttribute("searchKeywordList",searchKeywordList);
		
		
		return "/page/searchbar_mng";
	}
	
	@RequestMapping("/addSearchKeyword.admin")
	public String addSearchKeyword(Model model) {
		int cnt = aPageService.countSearchKeyword();
		model.addAttribute("inputIndex",cnt+keyindex);
		keyindex++;
		return "/page/searchbar_input";
	}

}
