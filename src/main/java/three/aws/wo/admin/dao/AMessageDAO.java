package three.aws.wo.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.admin.vo.MessageVO;
import three.aws.wo.user.vo.UserSMSListVO;

@Repository
public class AMessageDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	public List<MessageVO> messageList(){
		return sqlSession.selectList("AMessageDAO.messageList");
	}

	public void sendSMS(MessageVO vo) {
		sqlSession.insert("AMessageDAO.sendSMS", vo);
	}

	public List<UserSMSListVO> sms_usableList() {
		return sqlSession.selectList("AMessageDAO.sms_usableList");
	}

	public List<MessageVO> searchMessageList() {
		return sqlSession.selectList("AMessageDAO.searchMessageList");
	}
}
