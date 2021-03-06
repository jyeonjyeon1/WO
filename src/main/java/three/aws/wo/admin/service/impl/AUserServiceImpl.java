package three.aws.wo.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.admin.dao.AUserDAO;
import three.aws.wo.admin.service.AUserService;
import three.aws.wo.user.vo.UserVO;

@Service
public class AUserServiceImpl implements AUserService{
	@Autowired
	private  AUserDAO aUserDAO;
	
	@Override
	public List<UserVO> userList() {
		return aUserDAO.userList();
	}

	@Override
	public List<UserVO> visitHistory() {
		return aUserDAO.visitHistory();
	}
	@Override
	public String getOriginalPass(String u_id) {
		return aUserDAO.getOriginalPass(u_id);
	}
	@Override
	public void updateUser(UserVO vo) {
		aUserDAO.updateUser(vo);
	}
}
