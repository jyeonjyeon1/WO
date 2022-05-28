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
	// ȸ������ get
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
				System.out.println("��й�ȣ" + pwd);
				vo.setU_password(pwd);
				
				userService.insertUser(vo);
			}
			// ��⿡��~ �Էµ� ���̵� �����Ѵٸ� -> �ٽ� ȸ������ �������� ���ư��� 
			// �������� �ʴ´ٸ� -> register
		
		
		System.out.println("ȸ������ �Ϸ� DBȮ��");
		return "/login/login_joined";
	}



	// ���̵� �ߺ� üũ
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
		System.out.println("email�ߺ�Ȯ��");
		return userService.emailCheck(email);
	}

	@ResponseBody
	@RequestMapping("/telcheck.user")
	public int telCheck(String tel) {
		System.out.println("tel�ߺ�Ȯ��");
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
		System.out.println("��й�ȣ = " + pwd);
		vo.setU_password(pwd);
		
		userService.updateUser(vo);
		
		return "redirect:/index.user";
	}
	
	// ȸ�� Ż�� get
	@RequestMapping(value="/deleteUser.user", method = RequestMethod.GET)
	public String deleteUser() throws Exception{
		System.out.println("memberDelete_get");
		return "/mypage/mypage_withdraw";
	}
	
	// ȸ�� Ż�� post
	@RequestMapping(value="/deleteUser.user", method = RequestMethod.POST)
	public String deleteUser(UserVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		System.out.println("memberDelete_post");
		// ���ǿ� �ִ� member�� ������ member������ �־��ݴϴ�.
		UserVO userSession = (UserVO) session.getAttribute("userSession");
		System.out.println("���� ����");
		// ���ǿ��ִ� ��й�ȣ
		String sessionPass = userSession.getU_password();
		
		// vo�� ������ ��й�ȣ
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
	
	// ���̵� ã�� ������ �̵�
	@RequestMapping(value="findId.user", method=RequestMethod.GET)
	public String findIdView() {
		System.out.println("findIdView");
		return "login/findId";
	}
	
    // ���̵� ã�� ���� 
	@ResponseBody
	@RequestMapping(value="findId.user", method=RequestMethod.POST)
	public String findId(@RequestBody HashMap<String, String> param) {
		String u_tel = param.get("u_tel");
		UserVO user = userService.findId(u_tel);
		String result = user.getU_id();
		
		return result;
	}
	
    // ��й�ȣ ã�� �������� �̵�
	@RequestMapping(value="findPassword.user", method=RequestMethod.GET)
	public String findPasswordView() {
		return "login/findPassword";
	}
	
    // ��й�ȣ ã�� ����
	@ResponseBody
	@RequestMapping(value="findPassword.user", method=RequestMethod.POST)
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
	
	// ��й�ȣ �ٲٱ� ����
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
