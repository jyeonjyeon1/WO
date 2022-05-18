package three.aws.wo.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.user.dao.UserRegisterDAO;
import three.aws.wo.user.service.UserRegisterService;
import three.aws.wo.user.vo.UserVO;
@Service
public class UserRegisterServiceImpl implements UserRegisterService {
	@Autowired
	private UserRegisterDAO userRegisterDAO;

	@Override
	public String getU_id(int sns_seq) {
		return userRegisterDAO.getU_id(sns_seq);
	}

	@Override
	public void insertSNSUser(UserVO vo) {
		userRegisterDAO.insertSNSUser(vo);
	}

	@Override
	public void updateSNSUser(String u_id) {
		userRegisterDAO.updateSNSUser(u_id);
	}

}
