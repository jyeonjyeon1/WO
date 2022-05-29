package three.aws.wo.admin.service;

import java.util.List;

import three.aws.wo.user.vo.UserVO;

public interface AUserService {
	List<UserVO> userList();
	List<UserVO> visitHistory();

}
