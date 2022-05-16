package three.aws.wo.user.service.impl;

import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.user.dao.UserDAO;
import three.aws.wo.user.dao.UserLoginDAO;
import three.aws.wo.user.service.UserLoginService;
import three.aws.wo.user.vo.UserVO;
@Service
public class UserLoginServiceImpl implements UserLoginService {
	@Autowired
	private UserLoginDAO userLoginDAO;
	private HashMap<String, Object> String;
	@Override
	public int userLoginCheck(HashMap<String, String> param) throws Exception {
		return userLoginDAO.userLoginCheck(param);
	}
	@Override
	public UserVO loggedin(String u_id, String rememberId, HttpSession session, HttpServletResponse response) throws Exception {
		return userLoginDAO.loggedin(u_id,rememberId,session,response);
	}
	@Override
	public int kakaoLogin(String u_id) throws Exception {
		return userLoginDAO.kakaoLogin(String, u_id);
	}
	@Override
	public UserVO encryption(String u_id) throws Exception {
		return userLoginDAO.encryption(u_id);
	}
	
}
