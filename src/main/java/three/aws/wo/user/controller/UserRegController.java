package three.aws.wo.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.user.service.UserService;
import three.aws.wo.user.vo.UserVO;

@Controller
public class UserRegController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/register.user")
	public String insertUser(UserVO vo) {
		userService.insertUser(vo);
		System.out.println("회원가입 처리 완료 DB확인");
		return "/login/login_joined";
	}
	
	//아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/idcheck.user", method = RequestMethod.POST)
	public int idCheck(UserVO id)throws Exception {
		System.out.println("id중복확인");
		return userService.idCheck(id);
	}
	
	@ResponseBody
	@RequestMapping("/emailcheck.user")
	public int emailCheck(String email) {
		System.out.println("email중복확인");
		return userService.emailCheck(email);
	}
	
	@ResponseBody
	@RequestMapping("/telcheck.user")
	public int telCheck(String tel) {
		System.out.println("tel중복확인");
		return userService.telCheck(tel);
	}
}
