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
	@RequestMapping(value = "/loginCheck.store", method = RequestMethod.POST)
	public int storeLoginCheck(@RequestBody HashMap<String, String> param, HttpSession session,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		int result = 0;
		String inputId = param.get("sa_acc_no");
		StoreVO vo = storeLoginService.storeLoggin(inputId);
		String inputPwd = param.get("sa_password");
		boolean s_pwdMatch = false;
		if(vo != null) {
			s_pwdMatch = pwdEncoder.matches(inputPwd,vo.getSa_password());
		}

		if(vo != null && s_pwdMatch == true) {
			result = 1;
			setLogin(inputId, session, response);
		}

		return result;

	}

	public void setLogin(String sa_acc_no, HttpSession session, HttpServletResponse response) throws Exception {
		StoreVO vo = storeLoginService.storeLoggin(sa_acc_no);
		session.setAttribute("storeSession", vo);
		System.out.println(session);
	}

	@ResponseBody
	@RequestMapping(value = "/sendResetPassword.store", method = RequestMethod.POST)
	public int test(@RequestBody HashMap<String, String> param) {
		String num = param.get("tel_reset");
		String bcrypt = pwdEncoder.encode(num);
		System.out.println(num + " : " + bcrypt);
		return 1;
	}
	
	@RequestMapping("/logout.store")
	public String userLogout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		System.out.println(session);
		return "redirect:/login.store";
	}

}
