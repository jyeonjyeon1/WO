package three.aws.wo.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	@RequestMapping("/index.do")
	public String toIndex() {
		System.out.println("유저컨트롤러 왔따");
		return "/index/index";
	}
	
	@RequestMapping("/join.do")
	public String toRegForm() {
		System.out.println("회원가입화면");
		return "/login/login_register2";
	}
}
