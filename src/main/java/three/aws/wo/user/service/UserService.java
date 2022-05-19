package three.aws.wo.user.service;

import java.util.HashMap;

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
	UserVO findId(String tel);
	UserVO findPassword(HashMap<String, String> idtel);
	void updatePassword(HashMap<String, String> idpw);
	// ¾ÏÈ£È­
	int idChk(UserVO vo) throws Exception;
	
}
