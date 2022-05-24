package three.aws.wo.store.controller;

import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.store.service.StoreLoginService;
import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.vo.UserVO;

@Controller
public class StoreLoginController {
	
	@Autowired
	private StoreLoginService storeLoginService;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	@ResponseBody
	@RequestMapping(value="/loginCheck.store",method=RequestMethod.POST)
	public int storeLoginCheck(@RequestBody HashMap<String, String> param, HttpSession session, HttpServletRequest request, HttpServletResponse response)
				throws Exception {
			
		StoreVO s_encryption = storeLoginService.encryption(param.get("s_id"));
		//boolean s_pwdMatch = pwdEncoder.matches(param.get("s_pw"), s_encryption.getSa_password());
		int result =0;
		
		//no encryption pw
		boolean s_pwdMatch = false;
		
		if(s_encryption ==null) {
			result=0;//no id
		} else {
			System.out.println(param.get("s_pw"));
			System.out.println(s_encryption.getSa_password());
			if(param.get("s_pw").equals(s_encryption.getSa_password())) {
				s_pwdMatch = true;
			}else {
				s_pwdMatch = false;//no pw
			}
		}
		 
		String s_id = param.get("s_id");
		
		if(s_pwdMatch ==true) {
			result=1;
			setLogin(s_id, session, response);
			
		}else {
			result=2;
			System.out.println("not equals pw");
		}
		return result;

	}
	
	public void setLogin(String s_id, HttpSession session, HttpServletResponse response ) throws Exception {
		StoreVO vo = storeLoginService.encryption(s_id);
		session.setAttribute("storeSession", vo);
	}
	
	@ResponseBody
	@RequestMapping(value="/sendResetPassword.store",method=RequestMethod.POST)
	public int test(@RequestBody HashMap<String, String> param) {
		String num = param.get("tel_reset");
		String bcrypt = pwdEncoder.encode(num);
		System.out.println(num + " : "+bcrypt);
		return 1;
	}
	
}
