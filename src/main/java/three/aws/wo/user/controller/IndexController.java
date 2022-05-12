package three.aws.wo.user.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.store.vo.IndexVO;
import three.aws.wo.user.service.IndexService;
import three.aws.wo.user.service.UStoreService;

@Controller
public class IndexController {
	@Resource
	private IndexService indexService;
	
	@RequestMapping("/index.user")
	public String index(IndexVO vo, Model model) {
		List<IndexVO> myStoreList = indexService.myStoreList();
		model.addAttribute("myStoreList" ,myStoreList);
		
		List<IndexVO> newStoreList = indexService.newStoreList();
		model.addAttribute("newStoreList" ,newStoreList);
		
		List<IndexVO> recStoreList = indexService.recStoreList();
		model.addAttribute("recStoreList" ,recStoreList);
		
		
		List<IndexVO> todayDrinkList = indexService.todayDrinkList();
		model.addAttribute("todayDrinkList" ,todayDrinkList);
		
		List<IndexVO> eventBoardList = indexService.eventBoardList();
		model.addAttribute("eventBoardList" ,eventBoardList);
		
		return "/index/index";
	}
	
	
	@RequestMapping("/list.user")
	public String indexList(IndexVO vo, Model model) {
		List<IndexVO> myStoreList = indexService.myStoreList();
		model.addAttribute("myStoreList" ,myStoreList);
		
		List<IndexVO> newStoreList = indexService.newStoreList();
		model.addAttribute("newStoreList" ,newStoreList);
		
		List<IndexVO> recStoreList = indexService.recStoreList();
		model.addAttribute("recStoreList" ,recStoreList);
		
		return "/index/index_list";
	}
	
}