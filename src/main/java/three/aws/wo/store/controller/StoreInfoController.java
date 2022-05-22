package three.aws.wo.store.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class StoreInfoController {

	
	@ResponseBody
	@RequestMapping("/updateTel.store")
	public int updateTel(@RequestBody HashMap<String, String> param, HttpSession session ) {
		int result =0;
		System.out.println(param.get("si_tel"));
		result=1;
		return result;
	}
}
