package three.aws.wo.admin.service;

import java.util.List;

import three.aws.wo.admin.vo.MessageVO;

public interface AMessageService {
	List<MessageVO> messageList();
	void sendSMS(MessageVO vo);
}
