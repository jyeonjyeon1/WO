package three.aws.wo.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.user.service.UserService;
import three.aws.wo.user.vo.UserVO;

@Controller
public class UserRegController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/register.do")
	public String insertUser(UserVO vo) {
		userService.insertUser(vo);
		return "/index/index";
	}
}
