package three.aws.wo.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.user.vo.UserVO;

@Repository
public class AUserDAO {
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	public List<UserVO> userList(){
		return sqlSession.selectList("AUserDAO.userList");
	}

	public List<UserVO> visitHistory() {
		return sqlSession.selectList("AUserDAO.visitHistory");
	}

	public String getOriginalPass(String u_id) {
		return sqlSession.selectOne("AUserDAO.getOriginalPass", u_id);
	}

	public void updateUser(UserVO vo) {
		sqlSession.update("AUserDAO.updateUser", vo);
	}
}
