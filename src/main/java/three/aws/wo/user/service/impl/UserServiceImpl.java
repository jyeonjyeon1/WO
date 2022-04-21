package three.aws.wo.user.service.impl;

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
	public void checkId(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void login(UserVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateUser(UserVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteUser(UserVO vo) {
		// TODO Auto-generated method stub
		
	}

}
