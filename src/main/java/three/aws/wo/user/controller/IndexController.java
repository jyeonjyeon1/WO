package three.aws.wo.user.controller;

import java.util.List;

import javax.annotation.Resource;
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
	
}