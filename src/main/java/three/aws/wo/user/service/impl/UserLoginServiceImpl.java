package three.aws.wo.user.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.user.dao.UserDAO;
import three.aws.wo.user.dao.UserLoginDAO;
import three.aws.wo.user.service.UserLoginService;
import three.aws.wo.user.vo.SearchKeywordVO;
import three.aws.wo.user.vo.UserVO;
@Service
public class UserLoginServiceImpl implements UserLoginService {
	@Autowired
	private UserLoginDAO userLoginDAO;
	@Override
	public int userLoginCheck(HashMap<String, String> param) throws Exception {
		return userLoginDAO.userLoginCheck(param);
	}
	@Override
	public UserVO loggedin(String u_id, String rememberId, HttpSession session, HttpServletResponse response) throws Exception {
		return userLoginDAO.loggedin(u_id,rememberId,session,response);
	}
	@Override
	public int snsLogin(String sns_id) throws Exception {
		return userLoginDAO.snsLogin(sns_id);
	}
	@Override
	public UserVO encryption(String u_id) throws Exception {
		return userLoginDAO.encryption(u_id);
	}
	@Override
	public void insertSNSUser(String kakaoId) {
		userLoginDAO.insertSNSUser(kakaoId);
	}
	@Override
	public int checkSNSUser(int sns_seq) {
		return userLoginDAO.checkSNSUser(sns_seq);
	}
	@Override
	public List<SearchKeywordVO> searchKeywords() {
		return userLoginDAO.searchKeywords();
	}
	@Override
	public void updateLastDate(String u_id) {
		userLoginDAO.updateLastDate(u_id);
	}
	@Override
	public void visitHistory(HashMap<String, String> map) {
		userLoginDAO.visitHistory(map);
	}
}
