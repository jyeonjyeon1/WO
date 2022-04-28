package three.aws.wo.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.admin.vo.MessageVO;

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
}
