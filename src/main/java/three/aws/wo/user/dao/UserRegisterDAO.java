package three.aws.wo.user.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.user.vo.UserVO;

@Repository
public class UserRegisterDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public String getU_id(int sns_seq) {
		return sqlSession.selectOne("UserRegisterDAO.getU_id",sns_seq);
	}

	public void insertSNSUser(UserVO vo) {
		sqlSession.insert("UserRegisterDAO.insertSNSUser",vo);
	}

	public void updateSNSUser(String u_id) {
		sqlSession.update("UserRegisterDAO.updateSNSUser",u_id);
	}
}
