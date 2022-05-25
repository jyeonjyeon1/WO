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
import three.aws.wo.store.vo.StoreOptionGroupVO;
import three.aws.wo.store.vo.StoreOptionVO;
import three.aws.wo.store.vo.StoreVO;

@Controller
public class StorePumjeolController {
	@Resource
	private SMenuService sMenuService;
	@Resource
	private StorePumjeolSerivce storePumjeolService;

//	@@@@@@@@@@@@@@@@@@@@@@@@@@
	@RequestMapping("/pumjeol.store")
	public String pumjeol(HttpSession session, Model model) {
		StoreVO vo = (StoreVO)session.getAttribute("storeSession");
		String si_code = "";
		if(vo != null) {
			si_code = vo.getSi_code();
		}else {
			si_code = "2222111212";
		}
		
		System.out.println("@@@@@@@@@@@@@");
		List<StoreMenuVO> storeMenuList = sMenuService.storeMenuList(si_code);
		List<StoreMenuGroupVO> storeMgList = sMenuService.storeMgList(si_code);
		List<MenuBasicOptionVO> basicOpList = sMenuService.basicOpList(si_code);
		List<StoreOptionGroupVO> ogList = sMenuService.ogList(si_code);
		List<StoreOptionVO> optionList = sMenuService.optionList(si_code);

		model.addAttribute("storeMenuList", storeMenuList);
		model.addAttribute("storeMgList", storeMgList);
		model.addAttribute("basicOpList", basicOpList);
		model.addAttribute("ogList", ogList);
		model.addAttribute("optionList", optionList);

		return "/menu/menu_pumjeol";
	}

	@ResponseBody
	@RequestMapping("/updateMenuPumjeol.store")
	public int updateMenuPumjeol(@RequestBody HashMap<String, String> param, HttpSession session) {
		int result= 0;
		StoreVO vo = (StoreVO)session.getAttribute("storeSession");
		String si_code = "";
		if(vo != null) {
			si_code = vo.getSi_code();
		}else {
			si_code = "2222111212";
		}
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
	
	@ResponseBody
	@RequestMapping("/updateOptionPumjeol.store")
	public int updateOptionPumjeol(@RequestBody HashMap<String, String> param, HttpSession session) {
		int result= 0;
		StoreVO vo = (StoreVO)session.getAttribute("storeSession");
		String si_code = "";
		if(vo != null) {
			si_code = vo.getSi_code();
		}else {
			si_code = "2222111212";
		}
		System.out.println("updateOptionPumjeol");
		String op_code = param.get("op_code");
		boolean op_oos = Boolean.valueOf(param.get("op_oos"));
		System.out.println(op_code);
		System.out.println(op_oos);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("si_code", si_code);
		map.put("op_code", op_code);
		map.put("op_oos", op_oos);
		try {
			storePumjeolService.updateOptionPumjeol(map);
			storePumjeolService.updateOptionPumjeol_MAO(map);
			result=1;
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println("옵션 품절 변경 에러...");
		}
		
		return result;
	}

}
