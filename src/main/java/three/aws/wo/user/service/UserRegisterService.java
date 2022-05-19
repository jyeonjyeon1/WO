package three.aws.wo.user.service;

import java.util.HashMap;

import three.aws.wo.user.vo.UserVO;

public interface UserRegisterService {

	String getU_id(int sns_seq);

	void insertSNSUser(UserVO vo);

	void updateSNSUser(HashMap<String, String> update);

}
