package three.aws.wo.user.service;

import three.aws.wo.user.vo.UserVO;

public interface UserService {
	void insertUser(UserVO vo);
	int idCheck(String id);
	int telCheck(String tel);
	int emailCheck(String email);
	void login(UserVO vo);
	void updateUser(UserVO vo);
	void deleteUser(UserVO vo);
	UserVO infoUser(UserVO vo);
	UserVO getUser(UserVO vo);
	UserVO findId(UserVO vo);
	UserVO findPassword(UserVO vo);
	// ¾ÏÈ£È­
	int idChk(UserVO vo) throws Exception;
	
}
