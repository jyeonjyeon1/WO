package three.aws.wo.user.service;

import three.aws.wo.user.vo.UserVO;

public interface UserRegisterService {

	String getU_id(int sns_seq);

	void insertSNSUser(UserVO vo);

	void updateSNSUser(String u_id);

}
