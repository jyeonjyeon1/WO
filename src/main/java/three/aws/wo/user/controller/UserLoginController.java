package three.aws.wo.user.controller;

import java.io.NotSerializableException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.service.UserLoginService;
import three.aws.wo.user.service.UserMypageService;
import three.aws.wo.user.service.UserOrderService;
import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.SearchKeywordVO;
import three.aws.wo.user.vo.UserVO;

@Controller
public class UserLoginController {
	@Autowired
	private UserLoginService userLoginService;
	@Autowired
	private UserOrderService userOrderService;
	@Autowired
	private UserMypageService userMypageService;
	@Inject
	BCryptPasswordEncoder pwdEncoder;

	@RequestMapping(value = "/login.user", method = RequestMethod.GET)
	public String u_loginPage(HttpSession session) {
		if (session.getAttribute("userSession") == null) {
			return "/login/login_login";
		} else {
			return "/index/index";
		}
	}

	public void setLogin(String userID, String rememberId, HttpSession session, HttpServletResponse response,HttpServletRequest request, String browser)
			throws Exception,NotSerializableException {
		UserVO vo = userLoginService.loggedin(userID, rememberId, session, response);
		// System.out.println(vo);
		Cookie cookie = new Cookie("rememberId", userID);
		if (rememberId.equals("true")) {
			cookie.setMaxAge(24 * 60 * 60 * 7);
			response.addCookie(cookie);
//			System.out.println("rememberId true => " + cookie);
		} else {
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
		List<BasketVO> cartList = userOrderService.cartList(userID);
		StoreVO cartStore = userOrderService.cartStore(userID);
		int wishCount = userMypageService.myWishListCount(userID);
		
		List<SearchKeywordVO> searchKeywords = userLoginService.searchKeywords();
		session.setAttribute("searchKeywords", searchKeywords);
		session.setAttribute("wishCount", wishCount);
		session.setAttribute("cartStoreSession", cartStore);
		session.setAttribute("cartListSession", cartList);
		session.setAttribute("userSession", vo);
		String ip = null;
		try {
			boolean isLoopBack = true;
			Enumeration<NetworkInterface> en;		
			en = NetworkInterface.getNetworkInterfaces();
			while(en.hasMoreElements()) {
				NetworkInterface ni = en.nextElement();
				if (ni.isLoopback())
					continue;
				Enumeration<InetAddress> inetAddresses = ni.getInetAddresses();
				while(inetAddresses.hasMoreElements()) {
					InetAddress ia = inetAddresses.nextElement();
					if (ia.getHostAddress() != null && ia.getHostAddress().indexOf(".") != -1) {
						ip = ia.getHostAddress();
//						System.out.println(ip);
						isLoopBack = false;
						break;
					}
				}
				if (!isLoopBack)
					break;
			}
		} catch (SocketException e) {
			e.printStackTrace();
		}
		visitHistory(userID,ip,browser);
	}

	private void visitHistory(String userID, String ip, String browser) {
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("u_id", userID);
		map.put("vh_ip", ip);
		map.put("vh_browser", browser);
		userLoginService.visitHistory(map);
	}

	@ResponseBody
	@RequestMapping(value = "/loginCheck.user", method = RequestMethod.POST)
	public int userLoginCheck(@RequestBody HashMap<String, String> param, HttpSession session,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		UserVO encryption = userLoginService.encryption(param.get("u_id"));
		boolean pwdMatch = false;
		if(encryption != null) {
			pwdMatch = pwdEncoder.matches(param.get("u_password"), encryption.getU_password());
		}
		int result = 0;
		if (encryption != null && pwdMatch == true) {
			result = 1;
		}
		String userID = param.get("u_id");
		String rememberId = param.get("rememberId");
		String browser = param.get("browser");
		if (result == 1) {
			setLogin(userID, rememberId, session, response, request,browser);
			userLoginService.updateLastDate(userID);
		}
		return result;
	}

	@ResponseBody
	@RequestMapping(value = "/kakaoLogin.user", method = RequestMethod.POST)
	public int kakaoLogin(@RequestBody HashMap<String, Object> param, HttpSession session, HttpServletResponse response,
			HttpServletRequest request) throws Exception {
		String id = Long.toString((long) param.get("id"));
		String kakaoId = id.toString() + "@k";
		int sns_seq = userLoginService.snsLogin(kakaoId);
		if (sns_seq == 0) {//
			userLoginService.insertSNSUser(kakaoId);
			sns_seq = userLoginService.snsLogin(kakaoId);
		}
		int result = userLoginService.checkSNSUser(sns_seq);

//		System.out.println(result);
		String browser = (String)param.get("browser");
		if (result == 0) {
			setLogin(kakaoId, "false", session, response, request,browser);
			userLoginService.updateLastDate(kakaoId);
			return result;
		} else {
			return sns_seq;
		}
	}

	@ResponseBody
	@RequestMapping("/naverLogin.user")
	public int naverLogin(@RequestBody HashMap<String, String> param, HttpSession session, HttpServletResponse response,
			HttpServletRequest request) throws Exception {
		String id = param.get("id");
		String naverId = id.toString() + "@n";
		int sns_seq = userLoginService.snsLogin(naverId);
//		System.out.println(sns_seq);
		if (sns_seq == 0) {// 
			userLoginService.insertSNSUser(naverId);
			sns_seq = userLoginService.snsLogin(naverId);
		}
		int result = userLoginService.checkSNSUser(sns_seq);
		if (result == 0) {
			String browser = param.get("browser");
			String u_id = id.toString().substring(0, 10) + "@n";
			setLogin(u_id, "false", session, response, request,browser);
			userLoginService.updateLastDate(u_id);
			return result;
		} else {
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