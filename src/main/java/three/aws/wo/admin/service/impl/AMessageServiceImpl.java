package three.aws.wo.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.admin.dao.AMessageDAO;
import three.aws.wo.admin.service.AMessageService;
import three.aws.wo.admin.vo.MessageVO;
import three.aws.wo.user.vo.UserSMSListVO;
@Service
public class AMessageServiceImpl implements AMessageService {
	@Autowired
	private AMessageDAO aMessageDAO;
	
	@Override
	public List<MessageVO> messageList() {
		return aMessageDAO.messageList();
	}

	@Override
	public void sendSMS(MessageVO vo) {
		aMessageDAO.sendSMS(vo);
	}

	@Override
	public List<UserSMSListVO> sms_usableList() {
		return aMessageDAO.sms_usableList();
	}

	@Override
	public List<MessageVO> searchMessageList() {
		return aMessageDAO.searchMessageList();
	}

}
