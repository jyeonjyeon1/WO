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
import three.aws.wo.store.service.StorePumjeolSerivce;
import three.aws.wo.store.vo.MenuBasicOptionVO;
import three.aws.wo.store.vo.StoreMenuGroupVO;
import three.aws.wo.store.vo.StoreMenuVO;

@Controller
public class StorePumjeolController {
	@Resource
	private SMenuService sMenuService;
	@Resource
	private StorePumjeolSerivce storePumjeolService;

//	@@@@@@@@@@@@@@@@@@@@@@@@@@
	@RequestMapping("/pumjeol.store")
	public String pumjeol(HttpSession session, Model model) {
		String storeName = "2222111212";
		System.out.println("@@@@@@@@@@@@@");
		List<StoreMenuVO> storeMenuList = sMenuService.storeMenuList(storeName);
		List<StoreMenuGroupVO> storeMgList = sMenuService.storeMgList(storeName);
		List<MenuBasicOptionVO> basicOpList = sMenuService.basicOpList(storeName);

		model.addAttribute("storeMenuList", storeMenuList);
		model.addAttribute("storeMgList", storeMgList);
		model.addAttribute("basicOpList", basicOpList);

		return "/menu/menu_pumjeol";
	}

	@ResponseBody
	@RequestMapping("/updateMenuPumjeol.store")
	public int updateMenuPumjeol(@RequestBody HashMap<String, String> param, HttpSession session) {
		int result= 0;
		String si_code = "2222111212";
		System.out.println("updateMenuPumjeol");
		String m_code = param.get("m_code");
		boolean m_oos = Boolean.valueOf(param.get("m_oos"));
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("si_code", si_code);
		map.put("m_code", m_code);
		map.put("m_oos", m_oos);
		try {
			storePumjeolService.updateMenuPumjeol(map);
			storePumjeolService.updateMenuPumjeol_MAO(map);
			result=1;
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println("메뉴 품절 변경 에러...");
		}
		
		
		return result;
	}

}
