package three.aws.wo.store.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.store.service.SMenuService;
import three.aws.wo.store.vo.MenuAndOptionVO;
import three.aws.wo.store.vo.MenuBasicOptionVO;
import three.aws.wo.store.vo.StoreMenuGroupVO;
import three.aws.wo.store.vo.StoreMenuVO;
import three.aws.wo.store.vo.StoreOptionGroupVO;
import three.aws.wo.store.vo.StoreOptionVO;

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
		List<StoreOptionGroupVO> ogList = sMenuService.ogList(storeName);
		List<StoreOptionVO> optionList = sMenuService.optionList(storeName);
		List<MenuAndOptionVO> MAOList = sMenuService.MAOList(storeName);
		List<MenuBasicOptionVO> basicOpList = sMenuService.basicOpList(storeName);
		
		model.addAttribute("storeMenuList",storeMenuList);
		model.addAttribute("storeMgList",storeMgList);
		model.addAttribute("ogList",ogList);
		model.addAttribute("optionList",optionList);
		model.addAttribute("MAOList", MAOList);
		model.addAttribute("basicOpList",basicOpList);
		//
		//
		
		return "/menu/menu_crud";
		
	}
	
	@ResponseBody
	@RequestMapping("/addMgName.store")
	public String addMgName(@RequestBody HashMap<String, String> param ,HttpSession session, Model model) {
		String si_code="2222111212";
		String mg_name = param.get("mg_name");
		String totalCount = String.valueOf(param.get("totalCount"));
		System.out.println("adding menugroup");
		
		
		HashMap<String,String> map = new HashMap<String, String>();
		map.put("si_code",si_code );
		map.put("mg_code", totalCount);
		map.put("mg_name", mg_name);
		 
		sMenuService.insertMgName(map);
		
		return "ok";
	}
	
	
	
}
