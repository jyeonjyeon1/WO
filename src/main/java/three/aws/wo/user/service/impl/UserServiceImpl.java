package three.aws.wo.user.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.user.dao.UserDAO;
import three.aws.wo.user.service.UserService;
import three.aws.wo.user.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {
	
	
	@Autowired
	private UserDAO userDAO;
	
	@Override
	public void insertUser(UserVO vo) {
		userDAO.insertUser(vo);
	}

	@Override
	public int idCheck(String id) {
		return userDAO.idCheck(id);
	}

	@Override
	public int telCheck(String tel) {
		return userDAO.telCheck(tel);
	}

	@Override
	public int emailCheck(String email) {
		return userDAO.emailCheck(email);
	}

	@Override
	public void login(UserVO vo) {
		
	}

	@Override
	public void updateUser(UserVO vo) {
		userDAO.updateUser(vo);
	}

	@Override
	public void deleteUser(UserVO vo) {
		userDAO.deleteUser(vo);
	}

	@Override
	public UserVO infoUser(UserVO vo) {
		return userDAO.infoUser(vo);
	}
	
	@Override
	public int idChk(UserVO vo) throws Exception {
		return userDAO.idChk(vo);
	}
	@Override
	public UserVO getUser(UserVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public UserVO findId(String vo) {
		return userDAO.findId(vo);
	}

	@Override
	public UserVO findPassword(HashMap<String, String> idtel) {
		return userDAO.findPassword(idtel);
	}

	@Override
	public void updatePassword(HashMap<String, String> idpw) {
		userDAO.updatePassword(idpw);
	}
    @Override
    public void regPointRecord(String u_id) {
        userDAO.regPointRecord(u_id);
    }
}
