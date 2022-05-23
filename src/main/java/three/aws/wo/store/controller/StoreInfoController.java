package three.aws.wo.store.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.store.vo.StoreVO;

@Controller
public class StoreInfoController {

	
	@ResponseBody
	@RequestMapping("/updateTel.store")
	public int updateTel(@RequestBody HashMap<String, String> param, HttpSession session ) {
		int result =0;
		String si_tel = param.get("si_tel");
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		
		HashMap<String , String> map = new HashMap<String, String>();
		map.put("si_code",svo.getSi_code());
		map.put("si_tel",si_tel);
		
		
		
		result=1;
		return result;
	}
}
