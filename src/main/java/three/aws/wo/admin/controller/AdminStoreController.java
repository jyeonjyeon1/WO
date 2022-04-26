package three.aws.wo.admin.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.admin.service.AStoreService;
import three.aws.wo.store.vo.StoreVO;

@Controller
public class AdminStoreController {
	@Resource
	private AStoreService aStoreService;

	@RequestMapping("/store_mng.admin")
	public String storeList(StoreVO vo, Model model) {
		List<StoreVO> storeList =aStoreService.storeList();
		System.out.println("store_mng");
		model.addAttribute("storeList" ,storeList);
		return "/store/store_mng";
	}
	
	@RequestMapping("/regisStore.admin")
	public String insertStore(StoreVO vo) {
		aStoreService.insertStore(vo);
		System.out.println("가게 등록 완료 DB확인");
		return "redirect:/store_mng.admin";
	}
}
