package three.aws.wo.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminLoginController {
	@GetMapping("/login.admin")
	public String login() {
		System.out.println("login.admin");
		return "/login";
	}
}
