package three.aws.wo.user.controller;

import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import three.aws.wo.user.service.UserService;
import three.aws.wo.user.vo.UserVO;
import org.springframework.ui.Model;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class UserRegController {
	@Autowired
	private UserService userService;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	private static final Logger logger = LoggerFactory.getLogger(UserRegController.class);

	@Inject
	public UserRegController(UserService userService) {
		this.userService = userService;
	}
	// 회원가입 get
	@RequestMapping(value = "/register.user", method = RequestMethod.GET)
	public void getinsertUser() throws Exception {
		logger.info("get register");
	}
		
	@RequestMapping(value = "/register.user", method = RequestMethod.POST)
	public String insertUser(UserVO vo) throws Exception {
		
		logger.info("post register");
		int result = userService.idChk(vo);
		
			if(result == 1) {
				return "/login/login_register2";
			}else if(result == 0) {
				String inputPass = vo.getU_password();
				String pwd = pwdEncoder.encode(inputPass);
				System.out.println("비밀번호" + pwd);
				vo.setU_password(pwd);
				
				userService.insertUser(vo);
			}
			// 요기에서~ 입력된 아이디가 존재한다면 -> 다시 회원가입 페이지로 돌아가기 
			// 존재하지 않는다면 -> register
		
		
		System.out.println("회원가입 완료 DB확인");
		return "/login/login_joined";
	}



	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/idcheck.user", method = RequestMethod.POST)
	public int idCheck(@RequestBody HashMap<String, String> param) throws Exception {
		int result = userService.idCheck(param.get("id"));
		System.out.println(result);
		return result;
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
	
	@RequestMapping(value="/updateUser.user", method = RequestMethod.GET)
	public String registerUpdateView(UserVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		
		System.out.println("updateUser-get");
		
		return "/mypage/mypage_info";
	}

	@RequestMapping(value="/updateUser.user", method = RequestMethod.POST)
	public String registerUpdate(UserVO vo, HttpSession session) throws Exception{
	
		String inputPass = vo.getU_password();
		String pwd = pwdEncoder.encode(inputPass);
		System.out.println("비밀번호 = " + pwd);
		vo.setU_password(pwd);
		
		userService.updateUser(vo);
		
		return "redirect:/index.user";
	}
	
	// 회원 탈퇴 get
	@RequestMapping(value="/deleteUser.user", method = RequestMethod.GET)
	public String deleteUser() throws Exception{
		System.out.println("memberDelete_get");
		return "/mypage/mypage_withdraw";
	}
	
	// 회원 탈퇴 post
	@RequestMapping(value="/deleteUser.user", method = RequestMethod.POST)
	public String deleteUser(UserVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		System.out.println("memberDelete_post");
		// 세션에 있는 member를 가져와 member변수에 넣어줍니다.
		UserVO userSession = (UserVO) session.getAttribute("userSession");
		System.out.println("세션 얻음");
		// 세션에있는 비밀번호
		String sessionPass = userSession.getU_password();
		
		// vo로 들어오는 비밀번호
		String voPass = vo.getU_password();	
		boolean pwdMatch = pwdEncoder.matches(voPass, sessionPass);
		
		System.out.println("pwdMatch" + pwdMatch);
		if(pwdMatch == false) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/deleteUser.user";
		}
		userService.deleteUser(vo);
		session.invalidate();
		return "redirect:/index.user";
	}

	@GetMapping("/findUser.user")
	public String findUserView() {
		System.out.println("findUserView");
		return "/login/login_choice";
	}
	
	// 아이디 찾기 페이지 이동
	@RequestMapping(value="findId.user", method=RequestMethod.GET)
	public String findIdView() {
		System.out.println("findIdView");
		return "login/findId";
	}
	
    // 아이디 찾기 실행 
	@ResponseBody
	@RequestMapping(value="findId.user", method=RequestMethod.POST)
	public String findId(@RequestBody HashMap<String, String> param) {
		String u_tel = param.get("u_tel");
		UserVO user = userService.findId(u_tel);
		String result = user.getU_id();
		
		return result;
	}
	
    // 비밀번호 찾기 페이지로 이동
	@RequestMapping(value="findPassword.user", method=RequestMethod.GET)
	public String findPasswordView() {
		return "login/findPassword";
	}
	
    // 비밀번호 찾기 실행
	@ResponseBody
	@RequestMapping(value="findPassword.user", method=RequestMethod.POST)
	public String findPassword(@RequestBody HashMap<String, String> param) {
		HashMap<String, String> idtel = new HashMap<String, String>();
		
		String u_id = param.get("u_id");
		String u_tel = param.get("u_tel");
		idtel.put("u_id", u_id);
		idtel.put("u_tel", u_tel);
		UserVO user = userService.findPassword(idtel);
		String result = user.getU_id();
		
		return result;
	}
	
	// 비밀번호 바꾸기 실행
	@ResponseBody
	@RequestMapping(value="updatePassword.user", method=RequestMethod.POST)
	public void updatePassword(@RequestBody HashMap<String, String> param) {
		
		HashMap<String, String> idpw = new HashMap<String, String>();
		System.out.println(param);
		
		String u_id = param.get("u_id");
		String u_password =  pwdEncoder.encode(param.get("u_password"));
		
		idpw.put("u_id", u_id);
		idpw.put("u_password", u_password);
		userService.updatePassword(idpw);
		
	}
	
}
