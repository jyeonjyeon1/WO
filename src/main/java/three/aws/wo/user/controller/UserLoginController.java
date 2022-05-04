package three.aws.wo.user.controller;

import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.user.service.UserLoginService;
import three.aws.wo.user.vo.UserVO;

@Controller
public class UserLoginController {
	@Autowired
	private UserLoginService userLoginService;
	
	@RequestMapping(value="/login_.user",method=RequestMethod.GET)
	public String u_loginPage() {
		return "/login/login_login2";
	}
	
	//우선 일치하는지 확인 후 로그인 진행
	@ResponseBody
	@RequestMapping(value = "/loginCheck.user", method = RequestMethod.POST)
	public int userLoginCheck(@RequestBody HashMap<String, String> param,HttpSession session, 
			HttpServletRequest request, HttpServletResponse response, Model model)
			throws Exception {
		//우선 아이디 비번번호가 일치하는지 확인
		int result = userLoginService.userLoginCheck(param);
		String userID = param.get("u_id");
		//아이디저장하기 체크했는지 가져옴
		String rememberId = param.get("rememberId"); 
		System.out.println(rememberId);//true false
//		System.out.println(param.get("u_id"));
//		System.out.println(param.get("u_password"));
//		System.out.println(result);
		System.out.println("세션 : "+ session);
		if(result==1) {//일치하는 경우 vo를 가져옴.
			UserVO vo = userLoginService.loggedin(userID,rememberId,session,response);
			//System.out.println(vo);//여기까지 vo 물고 들어온거
			Cookie cookie = new Cookie("rememberId",userID);
			if(rememberId.equals("true")) {
				cookie.setMaxAge(24*60*60*7);
				response.addCookie(cookie);
				System.out.println("rememberId true => "+cookie);
			}else {
				cookie.setMaxAge(0); //쿠키 죽인 후 추가(바로 소멸)
				response.addCookie(cookie);
			}
			vo.setU_password("");
			
			//session에 vo 저장
			session.setAttribute("userSession", vo);
		}
		return result;
	}
	
	@RequestMapping("/logout_.user")
	public String userLogout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:index.user";
	}
}
