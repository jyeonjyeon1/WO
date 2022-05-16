package three.aws.wo.user.service;

import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import three.aws.wo.user.vo.UserVO;

public interface UserLoginService {
	int userLoginCheck(HashMap<String, String> param) throws Exception;
	//int userLogin(UserVO vo, HttpSession session, String u_id, HttpServletResponse response);

	UserVO loggedin(String u_id, String rememberId, HttpSession session, HttpServletResponse response) throws Exception;
	
	// 카카오로그인
	int kakaoLogin(String u_id) throws Exception;

   	public UserVO encryption(String u_id) throws Exception;
}
