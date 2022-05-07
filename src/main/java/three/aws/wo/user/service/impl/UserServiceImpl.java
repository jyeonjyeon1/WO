package three.aws.wo.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.user.controller.IdPasswordNotMatchingException;
import three.aws.wo.user.dao.UserDAO;
import three.aws.wo.user.service.UserService;
import three.aws.wo.user.util.AuthInfo;
import three.aws.wo.user.util.LoginCommand;
import three.aws.wo.user.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {
	
	
	@Autowired
	private UserDAO userDAO;
	
	@Override
    public AuthInfo loginAuth(LoginCommand loginCommand) throws Exception {
        UserVO user = userDAO.selectById(loginCommand.getU_id());
        if(user == null) {
            throw new IdPasswordNotMatchingException();
        }
        if(!user.matchPassword(loginCommand.getU_password())) {
            throw new IdPasswordNotMatchingException();
        }
        return new AuthInfo(user.getU_id(), user.getU_name(), user.getU_grade());
    }
	
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
	public UserVO getUser(UserVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
