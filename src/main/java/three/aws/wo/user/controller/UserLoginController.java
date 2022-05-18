package three.aws.wo.user.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.service.UserLoginService;
import three.aws.wo.user.service.UserOrderService;
import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.UserVO;

@Controller
public class UserLoginController {
	@Autowired
	private UserLoginService userLoginService;
	@Autowired
	private UserOrderService userOrderService;
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	@RequestMapping(value="/login.user",method=RequestMethod.GET)
	public String u_loginPage(HttpSession session) {
		if(session.getAttribute("userSession")==null) {
			return "/login/login_login";
		}else {
			return "/index/index";
		}
	}
	
	public void setLogin(String userID, String rememberId, HttpSession session, HttpServletResponse response) throws Exception {
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
		// 유저 아이디 받아옴
		// 유저 아이디로 장바구니 조회 함.
		List<BasketVO> cartList = userOrderService.cartList(userID);
		// 유저장바구니에 있는 가게 불러옴
		StoreVO cartStore = userOrderService.cartStore(userID);
		// 장바구니 출력함.
		session.setAttribute("cartStoreSession", cartStore);
		session.setAttribute("cartListSession", cartList);
		//session에 vo 저장
		session.setAttribute("userSession", vo);
	}
	
	//우선 일치하는지 확인 후 로그인 진행
	@ResponseBody
	@RequestMapping(value = "/loginCheck.user", method = RequestMethod.POST)
	public int userLoginCheck(@RequestBody HashMap<String, String> param,HttpSession session, 
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		UserVO encryption = userLoginService.encryption(param.get("u_id"));
		boolean pwdMatch = pwdEncoder.matches(param.get("u_password"), encryption.getU_password());
		
		int result = 0;
		if(encryption != null && pwdMatch == true) {
			result = 1;
		}
		//우선 아이디 비번번호가 일치하는지 확인
		String userID = param.get("u_id");
		//아이디저장하기 체크했는지 가져옴
		String rememberId = param.get("rememberId"); 
		System.out.println(rememberId);//true false
		System.out.println("세션 : "+ session);
		if(result==1) {//일치하는 경우 vo를 가져옴.
			setLogin(userID, rememberId, session, response);
		}
		return result;
	}

	@ResponseBody
	@RequestMapping(value = "/kakaoLogin.user", method = RequestMethod.POST)
	public int kakaoLogin(@RequestBody HashMap<String, Object> param, HttpSession session, HttpServletResponse response) throws Exception {
		String id = Long.toString((long) param.get("id"));
		System.out.println("kakao"+id);
		String kakaoId = id.toString() +"@k";
		//로그인 확인 sns_seq 가져오려는 행동,
		int sns_seq = userLoginService.snsLogin(kakaoId);
		System.out.println(sns_seq);
		if(sns_seq == 0) {//아예 처음 로그인
			//SNS_USERS 테이블에 우선 등록
			userLoginService.insertSNSUser(kakaoId);
			//다시 seq 가져옴
			sns_seq = userLoginService.snsLogin(kakaoId);
			System.out.println(sns_seq);
		}
		//가져온 sns_seq에 u_id 있는지 확인
		System.out.println(sns_seq);
		int result = userLoginService.checkSNSUser(sns_seq);
		//result = 1이면 회원가입 미진행, 0일경우에는 회원가입 진행했으니 ㄱㅊ
		System.out.println(result);
		if(result == 0) {
			setLogin(kakaoId, "false", session, response);
			return result;
		}else{
			return sns_seq;
		}
	}
	
	@ResponseBody
	@RequestMapping("/naverLogin.user")
	public int naverLogin(@RequestBody HashMap<String,String> param, HttpSession session, HttpServletResponse response) throws Exception {
		String id = param.get("id");
		String naverId = id.toString() +"@n";
		//로그인 확인 sns_seq 가져오려는 행동,
		int sns_seq = userLoginService.snsLogin(naverId);
		System.out.println(sns_seq);
		if(sns_seq == 0) {//아예 처음 로그인
			//SNS_USERS 테이블에 우선 등록
			userLoginService.insertSNSUser(naverId);
			//다시 seq 가져옴
			sns_seq = userLoginService.snsLogin(naverId);
			System.out.println(sns_seq);
		}
		//가져온 sns_seq에 u_id 있는지 확인
		System.out.println(sns_seq);
		int result = userLoginService.checkSNSUser(sns_seq);
		//result = 1이면 회원가입 미진행, 0일경우에는 회원가입 진행했으니 ㄱㅊ
		System.out.println(result);
		if(result == 0) {
			setLogin(naverId, "false", session, response);
			return result;
		}else{
			return sns_seq;
		}
	}
	
@RequestMapping("/logout.user")
	public String userLogout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:index.user";
	}
}
