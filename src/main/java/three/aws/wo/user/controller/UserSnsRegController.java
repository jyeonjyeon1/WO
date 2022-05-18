package three.aws.wo.user.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import three.aws.wo.user.service.UserRegisterService;
import three.aws.wo.user.vo.UserVO;
@Controller
public class UserSnsRegController {
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	@Autowired
	private UserRegisterService userRegisterService;
	
	@GetMapping("/sns_join.user")
	public String snsRegister(HttpSession session, HttpServletRequest request,Model model) {
		if(session.getAttribute("userSession")==null) {
			int sns_seq = Integer.parseInt(request.getParameter("s"));
			String u_id = userRegisterService.getU_id(sns_seq);
			System.out.println(u_id);
			String u_type = "normal";
			if(u_id.indexOf("@k")!= -1) {
				u_type = "kakao";
			} else if(u_id.indexOf("@g")!= -1) {
				u_type = "naver";
			} else if(u_id.indexOf("@g")!= -1) {
				u_type = "google";
			}
			model.addAttribute("u_id", u_id);
			model.addAttribute("u_type", u_type);
			return "/login/login_sns_register";
		}else {
			return "/index/index";
		}
	}
	@RequestMapping(value = "/sns_register.user", method = RequestMethod.POST)
	public String insertSNSUser(UserVO vo) throws Exception {
		String u_id = vo.getU_id();
		String inputPass = vo.getU_password();
		String pwd = pwdEncoder.encode(inputPass);
		System.out.println("비밀번호" + pwd);
		vo.setU_password(pwd);
		
		userRegisterService.insertSNSUser(vo);
		userRegisterService.updateSNSUser(u_id);
		
		System.out.println("SNS 회원가입 완료 DB확인");
		return "/login/login_joined";
	}
}
