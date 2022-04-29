package three.aws.wo.admin.service;

import java.util.List;

import three.aws.wo.admin.vo.MessageVO;
import three.aws.wo.user.vo.UserSMSListVO;

public interface AMessageService {
	List<MessageVO> messageList();
	void sendSMS(MessageVO vo);
	List<UserSMSListVO> sms_usableList();
}
