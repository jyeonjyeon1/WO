package three.aws.wo.store.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
	
	
	@ResponseBody
	@RequestMapping("/updateAllday.store")
	public int updateAllday(@RequestBody HashMap<String, String> param, HttpSession session) {
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_Allday_input = param.get("si_Allday");
		String si_openA = param.get("si_openA");
		String si_closeA = param.get("si_closeA");
		String si_openW = param.get("si_openW");
		String si_closeW = param.get("si_closeW");
		String si_openSat = param.get("si_openSat");
		String si_closeSat = param.get("si_closeSat");
		String si_openSun = param.get("si_openSun");
		String si_closeSun = param.get("si_closeSun");
		
		String si_code = svo.getSi_code();
		boolean si_Allday = false;
		
		if(si_Allday_input.equals("y")) {
			si_Allday = true;
		}else {
			si_Allday=false;
		}
		
		System.out.println(si_Allday+"/"+si_openA +"/"+ si_closeA +"/"+
				si_openW+"/"+ si_closeW +"/"+si_openSat +"/"+si_closeSat +"/"+ si_openSun +"/"+si_closeSun  );
		
		HashMap<String , Object> map = new HashMap<String, Object>();
		map.put("si_code",si_code);
		map.put("si_Allday",si_Allday);
		map.put("si_openA",si_openA);
		map.put("si_closeA",si_closeA);
		map.put("si_openW",si_openW);
		map.put("si_closeW",si_closeW);
		map.put("si_openSat",si_openSat);
		map.put("si_closeSat",si_closeSat);
		map.put("si_openSun",si_openSun);
		map.put("si_closeSun",si_closeSun);
		
		
		sInfoService.updateAllday(map);
		
		if(si_Allday) {
			svo.setSi_openA(si_openA);
			svo.setSi_closeA(si_closeA);
		}else {
			svo.setSi_openW(si_openW);
			svo.setSi_closeW(si_closeW);
			svo.setSi_openSat(si_openSat);
			svo.setSi_closeSat(si_closeSat);
			svo.setSi_openSun(si_openSun);
			svo.setSi_closeSun(si_closeSun);
		}
		
		
		return 1;
		
	}
	
	@ResponseBody
	@RequestMapping("/updateHoliday.store")
	public int updateHoliday(@RequestBody HashMap<String, String> param, HttpSession session) throws ParseException {
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		
		String si_holiday_gong_input =param.get("si_holiday_gong");
		String si_holiday_fix = param.get("si_holiday_fix");
		String si_holiday_imsi_input = param.get("si_holiday_imsi");
		
		String si_code = svo.getSi_code();
		
		boolean si_holiday_gong = false;
		if(si_holiday_gong_input.equals("y")) {
			si_holiday_gong = true;
		}else {
			si_holiday_gong=false;
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
		Date si_holiday_imsi = sdf.parse(si_holiday_imsi_input);
		
		System.out.println(si_holiday_gong+"/"+si_holiday_fix +"/"+ si_holiday_imsi);
		
		HashMap<String , Object> map = new HashMap<String, Object>();
		map.put("si_code",si_code);
		map.put("si_holiday_gong",si_holiday_gong);
		map.put("si_holiday_fix",si_holiday_fix);
		map.put("si_holiday_imsi",si_holiday_imsi);

		sInfoService.updateHoliday(map);
		
		return 1;
		
	}
	
	
	
	
	
	
}