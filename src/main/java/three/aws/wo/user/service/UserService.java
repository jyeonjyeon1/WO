package three.aws.wo.user.service;

import three.aws.wo.user.vo.UserVO;

public interface UserService {
	void insertUser(UserVO vo);
	
	void checkId(String id);
	void login(UserVO vo);
	void updateUser(UserVO vo);
	void deleteUser(UserVO vo);
	
}
