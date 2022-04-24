 package three.aws.wo.admin.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.admin.service.AUserService;
import three.aws.wo.user.vo.UserVO;

@Controller
public class AdminUserController {
	@Resource
	private AUserService aUserService;

	@RequestMapping("/user_mng.admin")
	public String userList(UserVO vo, Model model) {
		List<UserVO> userList =aUserService.userList();
		System.out.println(userList);
		model.addAttribute("userList" ,userList);
		return "/user/user_mng";
	}
}
