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
		// storeCode for IMSI test... (if session -> storeName = session)
		String storeName = "2222111212";
		System.out.println("Welcome storemenuCRUD Page");
		List<StoreMenuVO> storeMenuList = sMenuService.storeMenuList(storeName);
		List<StoreMenuGroupVO> storeMgList = sMenuService.storeMgList(storeName);
		List<StoreOptionGroupVO> ogList = sMenuService.ogList(storeName);
		List<StoreOptionVO> optionList = sMenuService.optionList(storeName);
		List<MenuAndOptionVO> MAOList = sMenuService.MAOList(storeName);
		List<MenuBasicOptionVO> basicOpList = sMenuService.basicOpList(storeName);

		model.addAttribute("storeMenuList", storeMenuList);
		model.addAttribute("storeMgList", storeMgList);
		model.addAttribute("ogList", ogList);
		model.addAttribute("optionList", optionList);
		model.addAttribute("MAOList", MAOList);
		model.addAttribute("basicOpList", basicOpList);

		return "/menu/menu_crud";

	}

	// Adding MenuGroup
	@ResponseBody
	@RequestMapping("/addMgName.store")
	public String addMgName(@RequestBody HashMap<String, String> param, HttpSession session, Model model) {
		String si_code = "2222111212";
		String mg_name = param.get("mg_name");
//		String totalCount = String.valueOf(param.get("totalCount"));
		System.out.println("adding menugroup");
		// using totalCount inappropriate (deleting mg in the middle makes munjae)

		// getting mg_code of max mg_seq from menu_group
		String current_max_code = sMenuService.maxMgSeq(si_code);
		String mg_code = "";
		if (current_max_code == null) {
			mg_code = "11";
		} else {
			mg_code = String.valueOf(Integer.parseInt(current_max_code) + 1);
		}

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("si_code", si_code);
		map.put("mg_code", mg_code);
		map.put("mg_name", mg_name);

		sMenuService.insertMgName(map);

		return "ok";
	}

	// Deleting MenuGroup
	@ResponseBody
	@RequestMapping("/deleteMenuGroup.store")
	public int deleteMenuGroup(@RequestBody HashMap<String, String> param, HttpSession session) {
		int result = 0;
		String si_code = "2222111212";
		String mg_code = param.get("mg_code");
		System.out.println("deleting menugroup");

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("si_code", si_code);
		map.put("mg_code", mg_code);
		try {
			sMenuService.deleteMenuGroup(map);
			sMenuService.deleteMenuGroup_MAO(map);
			result = 1;
		} catch (Exception e) {
			System.err.println("mggroup delete FAIL");
		}
		return result;
	}

	// Deleting MenuGroup
	@ResponseBody
	@RequestMapping("/updateMenuGroup.store")
	public int updateMenuGroup(@RequestBody HashMap<String, String> param, HttpSession session) {
		int result = 0;
		String si_code = "2222111212";
		String mg_code = param.get("mg_code");
		String mg_name = param.get("mg_name");
		System.out.println("updating menugroup");

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("si_code", si_code);
		map.put("mg_code", mg_code);
		map.put("mg_name", mg_name);
		try {
			sMenuService.updateMenuGroup(map);
			sMenuService.updateMenuGroup_MAO(map);
			result = 1;
		} catch (Exception e) {
			System.err.println("mggroup update FAIL");
		}
		return result;
	}

	// 메뉴 추가
	@ResponseBody
	@RequestMapping("/insertMenu.store")
	public int insertMenu(@RequestBody HashMap<String, String> param, HttpSession session) {
		int result = 0;
		String si_code = "2222111212";
		int mg_seq = Integer.parseInt(param.get("mg_seq"));
		String mg_code = param.get("mg_code");
		String m_name = param.get("m_name");
		String opb_name = param.get("opb_name");
		int opb_price = Integer.parseInt(param.get("opb_price"));
		// 모든 메뉴
		String basic_menu_options = param.get("opb_total");
		String[] basic_menu_split = basic_menu_options.split("\\n");
		int basic_num = basic_menu_split.length; // 총 기본옵션 +1

		System.out.println("inserting menu");
		// getting m_code of max m_seq from menu
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("si_code", si_code);
		map.put("mg_code", mg_code);
		map.put("mg_seq", mg_seq);
		String current_max_M_code = sMenuService.maxMenuSeq(map);
		String m_code = "";
		if (current_max_M_code == null) {
			m_code = mg_code + "001";
		} else {
			m_code = String.valueOf(Integer.parseInt(current_max_M_code) + 1);
		}

		// getting ogb_code of max ogb_seq from menu_group
		String current_max_OGB_code = sMenuService.maxOgbSeq(si_code);
		String ogb_code = "";
		if (current_max_OGB_code == null) {
			ogb_code = "11";
		} else {
			ogb_code = String.valueOf(Integer.parseInt(current_max_OGB_code) + 1);
		}

		// getting opb_code of max opb_seq from menu_group
		String current_max_OPB_code = sMenuService.maxOpbSeq(map);
		map.put("ogb_code", ogb_code);
		String opb_code = "";
		if (current_max_OPB_code == null) {
			opb_code = ogb_code + "001";
		} else {
			opb_code = String.valueOf(Integer.parseInt(current_max_OPB_code) + 1);
		}

		System.out.println("m_code : " + m_code);
		System.out.println("ogb_code : " + ogb_code);
		System.out.println("opb_code : " + opb_code);

		map.put("m_name", m_name);
		map.put("m_code", m_code);
		map.put("opb_name", opb_name);
		map.put("opb_price", opb_price);
		map.put("opb_code", opb_code);
		// map에 si_code m_name ogb_code m_code

		try {
			sMenuService.insertMenu(map);
			// menu 먼저 등록하고 seq 받아옴
			int m_seq = sMenuService.getm_seq(map);

			map.put("m_seq", m_seq);
			sMenuService.insertOGB(map);

//			//OGB 먼저 등록하고 seq 받아옴
			int ogb_seq = sMenuService.getogb_seq(map);

			// ogb_seq 받아온 후에 입력 (첫번째것만)
			map.put("ogb_seq", ogb_seq);
			sMenuService.insertOPB(map);
			// (#{si_code},#{ogb_seq} ,#{opb_code},#{opb_name} ,#{opb_price})
			if (basic_num > 2) {
				for (int i = 2; i < basic_num; i++) {
					String code = ogb_code + "00" + String.valueOf(i);
					String[] split = basic_menu_split[i].split(" : ");
					String name = split[0];
					int price = Integer.parseInt(split[1].replace(" 원", "").replaceAll(",", ""));
					HashMap<String, Object> mapp = new HashMap<String, Object>();
					mapp.put("si_code", si_code);
					mapp.put("ogb_seq", ogb_seq);
					mapp.put("opb_code", code);
					mapp.put("opb_name", name);
					mapp.put("opb_price", price);
					sMenuService.insertOPB(mapp);
				}
			}

			result = 1;
		} catch (Exception e) {
			System.err.println("음료 등록 FAIL");
			e.printStackTrace();
		}

		return result;
	}

	// Deleting MenuGroup
	@ResponseBody
	@RequestMapping("/updateMenu.store")
	public int updateMenu(@RequestBody HashMap<String, String> param, HttpSession session) {
		int result = 0;
		String si_code = "2222111212";
		String mg_code = param.get("mg_code");
		System.out.println("deleting menugroup");

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("si_code", si_code);
		map.put("mg_code", mg_code);
//		try {
//			sMenuService.deleteMenuGroup(map);
//			sMenuService.deleteMenuGroup_MAO(map);
//			result = 1;
//		} catch (Exception e) {
//			System.err.println("mggroup delete FAIL");
//		}
		return result;
	}

}
