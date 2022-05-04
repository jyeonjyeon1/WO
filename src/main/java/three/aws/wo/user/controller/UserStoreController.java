package three.aws.wo.user.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.user.service.UStoreService;
import three.aws.wo.store.vo.StoreVO;

@Controller
public class UserStoreController {
	@Resource
	private UStoreService uStoreService;
	
	@RequestMapping("/storeList.user")
	public String storeList(StoreVO vo, Model model) {
		List<StoreVO> storeList =uStoreService.storeList();
		System.out.println("user페이지에서 storelist");
		model.addAttribute("storeList" ,storeList);
		return "/order/order_storeList";
	}
}
