package three.aws.wo.user.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.admin.vo.BannerVO;
import three.aws.wo.store.vo.IndexVO;
import three.aws.wo.user.service.IndexService;
import three.aws.wo.user.vo.UserVO;

@Controller
public class IndexController {
	@Resource
	private IndexService indexService;
	
	@RequestMapping("/index.user")
	public String index(IndexVO vo, Model model, HttpSession session) {
		
		String u_id = "";
		UserVO uv = (UserVO) session.getAttribute("userSession");
		if(uv == null) {
			u_id = "No_Data";
		}
		else if (uv != null) {
			u_id = uv.getU_id();
		}
		List<IndexVO> myStoreList = indexService.myStoreList(u_id);
		model.addAttribute("myStoreList" ,myStoreList);
		
		
		
		
		List<IndexVO> newStoreList = indexService.newStoreList();
		model.addAttribute("newStoreList" ,newStoreList);
		
		List<IndexVO> recStoreList = indexService.recStoreList();
		model.addAttribute("recStoreList" ,recStoreList);
		
		
		List<IndexVO> todayDrinkList = indexService.todayDrinkList();
		model.addAttribute("todayDrinkList" ,todayDrinkList);
		
		List<BannerVO> eventBoardList = indexService.eventBoardList();
		model.addAttribute("eventBoardList" ,eventBoardList);
		
		return "/index/index";
	}
	
	
	@RequestMapping("/list.user")
	public String indexList(IndexVO vo, Model model, HttpSession session) {
		String u_id = "";
		UserVO uv = (UserVO) session.getAttribute("userSession");
		if(uv == null) {
			u_id = "No_Data";
		}
		else if (uv != null) {
			u_id = uv.getU_id();
		}
		
		List<IndexVO> myStoreList = indexService.myStoreList(u_id);
		model.addAttribute("myStoreList" ,myStoreList);
		
		List<IndexVO> newStoreList = indexService.newStoreList();
		model.addAttribute("newStoreList" ,newStoreList);
		
		List<IndexVO> recStoreList = indexService.recStoreList();
		model.addAttribute("recStoreList" ,recStoreList);
		
		return "/index/index_list";
	}
	
	@RequestMapping("/map.user")
	public String tomapPage(IndexVO vo, Model model) {
		System.out.println("map");
		List<IndexVO> newStoreList = indexService.newStoreList();
		model.addAttribute("newStoreList" ,newStoreList);
		HashMap<String,String> zzz = new HashMap<String,String>();
		zzz.put("loc","Á¾·Î");
		List<IndexVO> addrStoreList = indexService.addrStoreList(zzz);
		model.addAttribute("addrStoreList" ,addrStoreList);
		
		return "/index/index_map";
	}
	
	@RequestMapping("/addMap.user")
	public String addMap(HttpServletRequest request, Model model) {
		String juso = request.getParameter("addr");
		String cut = juso.split(" ")[2].substring(0,2);
		System.out.println(cut);
		HashMap<String,String> zzz = new HashMap<String,String>();
		zzz.put("loc",cut);
		List<IndexVO> addrSearchList = indexService.addrStoreList(zzz);
		model.addAttribute("addrSearchList" ,addrSearchList);
		return "/index/jido";
	}
	
}