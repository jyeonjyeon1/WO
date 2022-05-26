package three.aws.wo.store.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.store.service.StoreInfoService;
import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.vo.UserVO;

@Controller
public class StoreInfoController {
	
	@Resource
	private StoreInfoService sInfoService;
	
	@RequestMapping("/basic.store")
	public String toBasicPage(HttpSession session, Model model) {
		StoreVO vo = (StoreVO) session.getAttribute("storeSession");
		System.out.println("store info_basic");
		return "/info/info_basic";
	}
	
	@ResponseBody
	@RequestMapping("/updateTel.store")
	public int updateTel(@RequestBody HashMap<String, String> param, HttpSession session ) {
		
		String si_tel = param.get("si_tel");
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		System.out.println(si_tel);
		
		HashMap<String , String> map = new HashMap<String, String>();
		map.put("si_code",svo.getSi_code());
		map.put("si_tel",si_tel);
		sInfoService.updateTel(map);
		svo.setSi_tel(si_tel);
		
		
		return 1;
	}
	
	@ResponseBody
	@RequestMapping("/updatePyeon2.store")
	public int updatePyeon2(@RequestBody HashMap<String, String> param, HttpSession session ) {
		
		String si_parking_able_input = param.get("si_parking_able");
		boolean si_parking_able = false;
		String si_etc = param.get("si_etc");
		String si_referinfo = param.get("si_referinfo");
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		
		if(si_parking_able_input.equals("y")) {
			si_parking_able =true;
		}else {
			si_parking_able=false;
		}
		
		
		HashMap<String , Object> map = new HashMap<String, Object>();
		map.put("si_code",svo.getSi_code());
		map.put("si_parking_able",si_parking_able);
		map.put("si_etc",si_etc);
		map.put("si_referinfo",si_referinfo);
		System.out.println(si_referinfo);
		sInfoService.updatePyeon2(map);
		svo.setSi_parking_able(si_parking_able);
		svo.setSi_referinfo(si_etc);
		svo.setSi_referinfo(si_referinfo);
		
		return 1;
	}
	
	@ResponseBody
	@RequestMapping("/updateSiStatus.store")
	public int updateSiStatus(@RequestBody HashMap<String, String> param, HttpSession session ) {
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_status_input = param.get("si_status");
		String si_code = svo.getSi_code();
		boolean si_status = false;
		if(si_status_input.equals("y")) {
			si_status =true;
		}else {
			si_status=false;
		}
		System.out.println(si_status);
		
		HashMap<String , Object> map = new HashMap<String, Object>();
		map.put("si_code",si_code);
		map.put("si_status",si_status);
		System.out.println(map);
		sInfoService.updateSiStatus(map);
		
		svo.setSi_status(si_status);
		
		return 1;
	}
	
	
	
	
	
}
