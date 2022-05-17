package three.aws.wo.store.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.store.service.SMenuService;
import three.aws.wo.store.vo.StoreMenuGroupVO;
import three.aws.wo.store.vo.StoreMenuVO;

@Controller
public class StoreMenuController {
	@Resource
	private SMenuService sMenuService;
	
	@RequestMapping("/CRUD.store")
	public String storeMenuList(HttpSession session, Model model) {
		//일단은 그냥 임시로 storeCode를 정해봄
		String storeName = "2222111212";
		System.out.println("storemenuCRUD페이지");
		List<StoreMenuVO> storeMenuList = sMenuService.storeMenuList(storeName);
		List<StoreMenuGroupVO> storeMgList = sMenuService.storeMgList(storeName);
		model.addAttribute("storeMenuList",storeMenuList);
		model.addAttribute("storeMgList",storeMgList);
		return "/menu/menu_crud";
		
	}
}
