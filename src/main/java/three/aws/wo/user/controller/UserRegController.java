package three.aws.wo.user.controller;

import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
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

import three.aws.wo.user.service.UserRegisterService;
import three.aws.wo.user.service.UserService;
import three.aws.wo.user.vo.UserVO;
import org.springframework.ui.Model;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class UserRegController {
	@Autowired
	private UserService userService;
	@Autowired
	private UserRegisterService userRegisterService;

	@Inject
	BCryptPasswordEncoder pwdEncoder;

	private static final Logger logger = LoggerFactory.getLogger(UserRegController.class);

	@Inject
	public UserRegController(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping(value = "/register.user", method = RequestMethod.GET)
	public void getinsertUser() throws Exception {
		logger.info("get register");
	}

	@RequestMapping(value = "/register.user", method = RequestMethod.POST)
	public String insertUser(UserVO vo) throws Exception {

		logger.info("post register");
		int result = userService.idChk(vo);

		if (result == 1) {
			return "/login/login_register2";
		} else if (result == 0) {
			String inputPass = vo.getU_password();
			String pwd = pwdEncoder.encode(inputPass);
			vo.setU_password(pwd);

			userService.insertUser(vo);
		}
		
		userService.regPointRecord(vo.getU_id());

		return "/login/login_joined";
	}

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
		System.out.println("emailï¿½ßºï¿½È®ï¿½ï¿½");
		return userService.emailCheck(email);
	}

	@ResponseBody
	@RequestMapping("/telcheck.user")
	public int telCheck(String tel) {
		System.out.println("telï¿½ßºï¿½È®ï¿½ï¿½");
		return userService.telCheck(tel);
	}

	@RequestMapping(value = "/updateUser.user", method = RequestMethod.GET)
	public String registerUpdateView(UserVO vo, HttpSession session, RedirectAttributes rttr) throws Exception {

		System.out.println("updateUser-get");

		return "/mypage/mypage_info";
	}

	@RequestMapping(value = "/updateUser.user", method = RequestMethod.POST)
	public String registerUpdate(UserVO vo, HttpSession session) throws Exception {

		String inputPass = vo.getU_password();
		String pwd = pwdEncoder.encode(inputPass);
		vo.setU_password(pwd);

		userService.updateUser(vo);

		return "redirect:/index.user";
	}

	@RequestMapping(value = "/deleteUser.user", method = RequestMethod.GET)
	public String deleteUser() throws Exception {
		System.out.println("memberDelete_get");
		return "/mypage/mypage_withdraw";
	}

	@RequestMapping(value = "/deleteUser.user", method = RequestMethod.POST)
	public String deleteUser(UserVO vo, HttpSession session, RedirectAttributes rttr) throws Exception {
		System.out.println("memberDelete_post");
		UserVO userSession = (UserVO) session.getAttribute("userSession");
		String sessionPass = userSession.getU_password();

		String voPass = vo.getU_password();
		boolean pwdMatch = pwdEncoder.matches(voPass, sessionPass);

		System.out.println("pwdMatch" + pwdMatch);
		if (pwdMatch == false) {
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

	@RequestMapping(value = "findId.user", method = RequestMethod.GET)
	public String findIdView() {
		System.out.println("findIdView");
		return "login/findId";
	}

	@ResponseBody
	@RequestMapping(value = "findId.user", method = RequestMethod.POST)
	public String findId(@RequestBody HashMap<String, String> param) {
		String u_tel = param.get("u_tel");
		UserVO user = userService.findId(u_tel);
		String result = user.getU_id();

		return result;
	}

	@RequestMapping(value = "findPassword.user", method = RequestMethod.GET)
	public String findPasswordView() {
		return "login/findPassword";
	}

	@ResponseBody
	@RequestMapping(value = "findPassword.user", method = RequestMethod.POST)
	public String findPassword(@RequestBody HashMap<String, String> param) {
		HashMap<String, String> idtel = new HashMap<String, String>();

		String u_id = param.get("u_id");
		String u_tel = param.get("u_tel_pass");
		idtel.put("u_id", u_id);
		idtel.put("u_tel", u_tel);
		UserVO user = userService.findPassword(idtel);
		String result = user.getU_id();

		return result;
	}

	@ResponseBody
	@RequestMapping(value = "updatePassword.user", method = RequestMethod.POST)
	public void updatePassword(@RequestBody HashMap<String, String> param) {

		HashMap<String, String> idpw = new HashMap<String, String>();
		System.out.println(param);

		String u_id = param.get("u_id");
		String u_password = pwdEncoder.encode(param.get("u_password"));

		idpw.put("u_id", u_id);
		idpw.put("u_password", u_password);
		userService.updatePassword(idpw);

	}

	@GetMapping("/sns_join.user")
	public String snsRegister(HttpSession session, HttpServletRequest request, Model model) {
		if (session.getAttribute("userSession") == null) {
			int sns_seq = Integer.parseInt(request.getParameter("s"));
			String u_id = userRegisterService.getU_id(sns_seq);
			System.out.println(u_id);
			String u_type = "normal";
			if (u_id.indexOf("@k") != -1) {
				u_type = "kakao";
			} else if (u_id.indexOf("@n") != -1) {
				u_type = "naver";
			} else if (u_id.indexOf("@g") != -1) {
				u_type = "google";
			}
			model.addAttribute("u_id", u_id);
			model.addAttribute("u_type", u_type);
			return "/login/login_sns_register";
		} else {
			return "/index/index";
		}
	}

	@RequestMapping(value = "/sns_register.user", method = RequestMethod.POST)
	public String insertSNSUser(UserVO vo) throws Exception {
		String sns_id = vo.getU_id();
		String u_id = vo.getU_id().split("@")[0].substring(0, 10) + "@" + vo.getU_id().split("@")[1];
		String inputPass = vo.getU_password();
		String pwd = pwdEncoder.encode(inputPass);
		System.out.println("ºñ¹Ð¹øÈ£" + pwd);
		vo.setU_id(u_id);
		vo.setU_password(pwd);
		HashMap<String, String> update = new HashMap<String, String>();
		update.put("sns_id", sns_id);
		update.put("u_id", u_id);
		userRegisterService.insertSNSUser(vo);
		userRegisterService.updateSNSUser(update);
		userService.regPointRecord(vo.getU_id());

		System.out.println("SNS È¸¿ø°¡ÀÔ ¿Ï·á DBÈ®ÀÎ");
		return "/login/login_joined";
	}

}
