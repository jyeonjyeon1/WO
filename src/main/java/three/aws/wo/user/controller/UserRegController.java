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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import three.aws.wo.user.service.UserService;
import three.aws.wo.user.vo.UserVO;

@Controller
public class UserRegController {
	@Autowired
	private UserService userService;

	@Inject
	public UserRegController(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/register.user")
	public String insertUser(UserVO vo) {
		userService.insertUser(vo);
		System.out.println("회원가입 완료 DB확인");
		return "/login/login_joined";
	}

	// 아이디 중복 체크
//	@ResponseBody
//	@RequestMapping("/idcheck.user")
//	public Map<String, Object> idCheck(@RequestBody String id) throws Exception {
//		System.out.println(id);
//		int count = 0;
//		Map<String, Object> map = new HashMap<String, Object>();
//
//		count = userService.idCheck(id);
//		System.out.println("count:" + count);
//		map.put("cnt", count);
//		System.out.println(map.toString().replace("=", ":"));
//		return map;
//	}

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
		// 세션에 있는 member를 가져와 member변수에 넣어줍니다.
		UserVO userSession = (UserVO) session.getAttribute("userSession");
		System.out.println("세션 얻음");
		// 세션에있는 비밀번호
		String sessionPass = userSession.getU_password();
		System.out.println("세션 비밀번호");
		// vo로 들어오는 비밀번호
		String voPass = vo.getU_password();
		
		if(!(sessionPass.equals(voPass))) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/mypage/mypage_withdraw";
		}
		
		return "/mypage/mypage_info";
	}

	@RequestMapping(value="/updateUser.user", method = RequestMethod.POST)
	public String registerUpdate(UserVO vo, HttpSession session) throws Exception{
		
		userService.updateUser(vo);
		
		session.invalidate();
		
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
		System.out.println("세션 비밀번호");
		// vo로 들어오는 비밀번호
		String voPass = vo.getU_password();
		
		if(!(sessionPass.equals(voPass))) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/mypage/mypage_withdraw";
		}
		userService.deleteUser(vo);
		session.invalidate();
		return "redirect:/index.user";
	}
	
}
