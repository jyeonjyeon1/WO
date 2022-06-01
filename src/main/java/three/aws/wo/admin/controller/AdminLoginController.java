package three.aws.wo.admin.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.admin.service.AdminService;
import three.aws.wo.admin.vo.AdminVO;

@Controller
public class AdminLoginController {
	public static boolean ses = false;
	@Autowired
	private AdminService adminService;

	@RequestMapping("/login.admin")
	public String a_loginPage(HttpServletRequest request) {
		if (ses == false) {
			System.out.println("login.admin");
			return "/login";
		}
		else {
			return "/index";
		}
	}

	@ResponseBody
	@RequestMapping(value = "/loginCheck.admin", method = RequestMethod.POST)
	public int adminLogin(@RequestBody HashMap<String, String> param, HttpSession session,HttpServletRequest request,HttpServletResponse response)
			throws Exception {
		int result = adminService.adminLogin(param);
		String a_id = param.get("a_id");
		if (result == 1) {// 로그인 성공
			setLogin(a_id, session,response);
//			RequestUtil.setAdminId(param.get("a_id"));
//			RequestUtil.setAdminName(a_name);
//			ses = true;
		}
		return result;
	}
	
	public void setLogin(String a_id, HttpSession session, HttpServletResponse response) throws Exception {
		AdminVO vo = adminService.adminLoggin(a_id);
		session.setAttribute("adminSession", vo);
		System.out.println(session);
	}

	@RequestMapping("/logout.admin")
	public String adminLogout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:login.admin";
	}

}
