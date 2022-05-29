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
import three.aws.wo.admin.vo.AdminVO;
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
		model.addAttribute("inputIndex",cnt+1);
		keyindex++;
		return "/page/searchbar_input";
	}
	
	@ResponseBody
	@RequestMapping("/insertKeyword.admin")
	public int insertKeyword(@RequestBody HashMap<String,Object> param) {
		int result = 0;
		System.out.println(param);
		try {
			aPageService.insertKeyword(param);
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/updateKeyword.admin")
	public int updateKeyword(@RequestBody HashMap<String,Object> param) {
		int result = 0;
		System.out.println(param);
		try {
			aPageService.updateKeyword(param);
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/deleteOneKeyword.admin")
	public int deleteOneKeyword(@RequestBody HashMap<String,Object> param) {
		int result = 0;
		System.out.println(param);
		try {
			aPageService.deleteKeyword(param);
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/deleteKeyword.admin")
	public int deleteKeyword(@RequestBody HashMap<String,String> param) {
		int result = 0;
		System.out.println(param);
		String seqs = param.get("seqs");
		String sb_seqs[] = seqs.split(",");
		System.out.println("length"+sb_seqs.length);
		System.out.println(sb_seqs);
		try {
			for(String seq : sb_seqs) {
				System.out.println(seq);
				HashMap<String,Object> map = new HashMap<String,Object>();
				map.put("sb_seq", seq);
				aPageService.deleteKeyword(map);
			}
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@RequestMapping("/deleteAllKeyword.admin")
	public String deleteAllKeyword(){
		HashMap<String,Object> param = new HashMap<String,Object>();
		aPageService.deleteKeyword(param);
		return "redirect:/searchbar_mng.admin";
	}
	
	@RequestMapping("/doc_form.admin")
	public String todoc_form(Model model) {
		System.out.println("doc_form");
		List<AdminVO> doc = aPageService.docList();
		model.addAttribute("docList", doc);
		return "/page/doc_form";
	}
	
	@ResponseBody
	@RequestMapping("/deleteDoc.admin")
	public int deleteDoc(@RequestBody HashMap<String,String> param) {
		int result = 0;
		int d_seq = Integer.parseInt(param.get("d_seq"));
		try {
			aPageService.deleteDoc(d_seq);
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/insertDoc.admin")
	public int insertDoc(@RequestBody HashMap<String,String> param) {
		int result = 0;
		System.out.println(param);
		String file_url = param.get("d_file_url");
		String d_file_name = file_url.split("____")[1];
		param.put("d_file_name", d_file_name);
		try {
			aPageService.insertDoc(param);
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
