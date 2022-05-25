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
import three.aws.wo.store.vo.StoreVO;

@Controller
public class StoreMenuController {
	@Resource
	private SMenuService sMenuService;
	
	
	
	
	@RequestMapping("/CRUD.store")
	public String storeMenuList(HttpSession session, Model model) {
		
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = svo.getSi_code();
		
		System.out.println("Welcome storemenuCRUD Page");
		List<StoreMenuVO> storeMenuList = sMenuService.storeMenuList(si_code);
		List<StoreMenuGroupVO> storeMgList = sMenuService.storeMgList(si_code);
		List<StoreOptionGroupVO> ogList = sMenuService.ogList(si_code);
		List<StoreOptionVO> optionList = sMenuService.optionList(si_code);
		List<MenuAndOptionVO> MAOList = sMenuService.MAOList(si_code);
		List<MenuBasicOptionVO> basicOpList = sMenuService.basicOpList(si_code);

		model.addAttribute("storeMenuList", storeMenuList);
		model.addAttribute("storeMgList", storeMgList);
		model.addAttribute("ogList", ogList);
		model.addAttribute("optionList", optionList);
		model.addAttribute("MAOList", MAOList);
		model.addAttribute("basicOpList", basicOpList);

		return "/menu/menu_crud";

	}

//======================crud related to menu==================================
	// Adding MenuGroup
	@ResponseBody
	@RequestMapping("/addMgName.store")
	public String addMgName(@RequestBody HashMap<String, String> param, HttpSession session, Model model) {
		
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = svo.getSi_code();
		
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
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = svo.getSi_code();
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
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = svo.getSi_code();
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

	//add menu
	@ResponseBody
	@RequestMapping("/insertMenu.store")
	public int insertMenu(@RequestBody HashMap<String, String> param, HttpSession session) {
		int result = 0;
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = svo.getSi_code();
		int mg_seq = Integer.parseInt(param.get("mg_seq"));
		String mg_code = param.get("mg_code");
		String m_name = param.get("m_name");
		String opb_name = param.get("opb_name");
		int opb_price = Integer.parseInt(param.get("opb_price"));
		// all menu
		String basic_menu_options = param.get("opb_total");
		String[] basic_menu_split = basic_menu_options.split("\\n");
		int basic_num = basic_menu_split.length; // �� �⺻�ɼ� +1

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
		// si_code m_name ogb_code m_code in map

		try {
			sMenuService.insertMenu(map);
			// first set-> menu / second get<- seq 
			int m_seq = sMenuService.getm_seq(map);

			map.put("m_seq", m_seq);
			sMenuService.insertOGB(map);

//			//first set-> OGB / get <- seq 
			int ogb_seq = sMenuService.getogb_seq(map);

			// ogb_seq �޾ƿ� �Ŀ� �Է� (ù��°�͸�)
			map.put("ogb_seq", ogb_seq);
			sMenuService.insertOPB(map);
			// (#{si_code},#{ogb_seq} ,#{opb_code},#{opb_name} ,#{opb_price})
			if (basic_num > 2) {
				for (int i = 2; i < basic_num; i++) {
					String code = ogb_code + "00" + String.valueOf(i);
					String[] split = basic_menu_split[i].split(" : ");
					String name = split[0];
					int price = Integer.parseInt(split[1].replace(" won", "").replaceAll(",", ""));
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
			System.err.println("���� ��� FAIL");
			e.printStackTrace();
		}

		return result;
	}

	@ResponseBody
	@RequestMapping("/updateMenu.store")
	public int updateMenu(@RequestBody HashMap<String, String> param, HttpSession session) {
		int result = 0;
		System.out.println("updating menu");
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = svo.getSi_code();
//		var paramm = {
//			"mg_seq" : mg_seq,
//			"mg_code" : mg_code,
//			"opb_total" : zzzz
//		};
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		String mg_seq = param.get("mg_seq");
		String mg_code = param.get("mg_code");
		String opb_total = param.get("opb_total");
		String[] basic_menu_split = opb_total.replaceAll("\\n","").replaceAll("\\t","").split("CUTCUTCUT");
		int basic_num = basic_menu_split.length; // �� �⺻�ɼ� +4 �޴��� [4]����
		for(String s : basic_menu_split) {
			System.out.println(s);
		}
		int m_seq = Integer.parseInt(basic_menu_split[2].split(":")[1]);
		
		String m_ori_name = basic_menu_split[0].split(":")[1];
		String m_name = basic_menu_split[3].split(":")[1];
		
		map.put("si_code", si_code);
		map.put("m_name", m_name);
		map.put("m_seq", m_seq);
		if(!m_ori_name.equals(m_name)) {
			//MENU���� �̸� �ٲ��ٰ���
			sMenuService.updateMenu(map);
			//OGB���� �̸� �ٲ��ٰ���
			sMenuService.updateOGB(map);
		}
		
		//�ش� m_seq�� �ش��ϴ� ogb_seq + ogb_code�� ���ð���
		int ogb_seq = sMenuService.ogbSeqfromMSeq(map);
		String ogb_code = sMenuService.ogbCodefromMSeq(map);
		
		
		System.out.println(ogb_seq);
		System.out.println(ogb_code);
		map.put("ogb_seq", ogb_seq);
		//option_basic�� �ش� menu �� ����
		sMenuService.deleteOptionBasics(map);
		
		try {
			for (int i = 4; i < basic_num; i++) {
				String code = ogb_code + "00" + String.valueOf(i-3);
				String[] split = basic_menu_split[i].split(" : ");
				String name = split[0];
				int price = Integer.parseInt(split[1].replace("", "").replaceAll(",", ""));
				HashMap<String, Object> mapp = new HashMap<String, Object>();
				mapp.put("si_code", si_code);
				mapp.put("ogb_seq", ogb_seq);
				mapp.put("opb_code", code);
				mapp.put("opb_name", name);
				mapp.put("opb_price", price);
				sMenuService.insertOPB(mapp);
			}
			result = 1;
		} catch (Exception e) {
			System.err.println("optionbasic ���� �ִ� ���� ����");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/deleteMenu.store")
	public int deleteMenu(@RequestBody HashMap<String, String> param, HttpSession session) {
		int result = 0;
		System.out.println("deleting menu");
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = svo.getSi_code();
		String m_code = param.get("m_code");
		int m_seq = Integer.parseInt(param.get("m_seq"));
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("si_code", si_code);
		map.put("m_code", m_code);
		map.put("m_seq", m_seq);
		
		try {
			sMenuService.deleteMenu(map);
			sMenuService.deleteMenu_MAO(map);
			result = 1;
		} catch (Exception e) {
			System.err.println("�޴� ���� ���� ����");
		}
		
		return result;
	}
	
//======================crud related to option==================================
	@ResponseBody
	@RequestMapping("/insertOg.store")
	public int insertOg(@RequestBody HashMap<String, String> param, HttpSession session, Model model) {
		
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = svo.getSi_code();
		String og_name = param.get("og_name");
		String ogop_total = param.get("ogop_total");
		String og_ros_String = param.get("og_ros");
		String og_code=null;
		Boolean og_ros = false;
		
		String[] ogop_split = ogop_total.replaceAll("\\n","").replaceAll("\\t","").split(" won");
		
		//og_ros
		if(og_ros_String.equals("[필수]")) {
			og_ros = true;
		}else if(og_ros_String.equals("[선택]")) og_ros=false;
		
		//getting max_og_code
		String current_max_Ogcode = sMenuService.maxOgCode(si_code);
		if(current_max_Ogcode==null) {
			og_code="11";
		}else {
			og_code= String.valueOf(Integer.parseInt(current_max_Ogcode)+1);
		}
		
		//insert option_group
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("si_code", si_code);
			map.put("og_code", og_code);
			map.put("og_name", og_name);
			map.put("og_ros", og_ros);
			sMenuService.addOg(map);
			
		//getting og_seq
		int og_seq = sMenuService.currentOg_seq(map);
				
		//insert options
		String op_name = ogop_split[0].split(":")[0];
		int op_price = Integer.parseInt(ogop_split[0].split(":")[1].replace(" ", "").replaceAll(",", ""));
		String op_code = og_code + "001" ; 
			HashMap<String, Object> mapp = new HashMap<String, Object>();
			mapp.put("op_code", op_code);
			mapp.put("og_seq", og_seq);
			mapp.put("si_code", si_code);
			mapp.put("op_name", op_name);
			mapp.put("op_price", op_price);
			sMenuService.addOp1(mapp);
		
		
		if(ogop_split.length>=2) {
			for(int i=1; i<ogop_split.length;i++) {
				String op_name2 = ogop_split[i].split(":")[0];
				int op_price2 = Integer.parseInt(ogop_split[i].split(":")[1].replace(" ", "").replaceAll(",", ""));
				String op_code2 =  String.valueOf(Integer.parseInt(op_code)+i) ; 
				HashMap<String, Object> mappp = new HashMap<String, Object>();
				mappp.put("op_code", op_code2);
				mappp.put("og_seq", og_seq);
				mappp.put("si_code", si_code);
				mappp.put("op_name", op_name2);
				mappp.put("op_price", op_price2);
				sMenuService.addOp2(mappp);
		}	
				}
		return 1;
	}
	
	@ResponseBody
	@RequestMapping("/updateOg_ros.store")
	public int updateOgRos(@RequestBody HashMap<String, String> param, HttpSession session, Model model) {
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = svo.getSi_code();
		
		String og_code = param.get("og_code");
		String og_ros_input = param.get("og_ros");
		boolean og_ros = false;
		System.out.println(og_code + " / " + og_ros_input);
		
		if(og_ros_input.equals("[필수]")) {
			og_ros = true;
		} else {
			og_ros = false;
		}
		System.out.println(og_ros);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("og_code", og_code);
		map.put("og_ros", og_ros);
		map.put("si_code", si_code);
		sMenuService.updateOgRos(map);
		
		return 1;
	}
	
}
