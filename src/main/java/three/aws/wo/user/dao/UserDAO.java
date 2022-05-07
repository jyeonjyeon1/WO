package three.aws.wo.user.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.user.vo.UserVO;

@Repository
public class UserDAO {

	@Autowired
	private SqlSessionTemplate sqlSession; 
	// SqlSession을 구현하고 코드에서 SqlSession를 대체. 쓰레드에 안전하고 여러개의 DAO나 매퍼에서 공유가능
	
	public void insertUser(UserVO vo) {
		sqlSession.insert("UserDAO.insertUser", vo);
	}
	
	public int idCheck(String id) {
		return sqlSession.selectOne("UserDAO.idCheck", id);
	}
	
	public int emailCheck(String email) {
		return sqlSession.selectOne("UserDAO.emailCheck");
	}
	
	public int telCheck(String tel) {
		return sqlSession.selectOne("UserDAO.telCheck");
	}

	public void deleteUser(UserVO vo) {
		sqlSession.delete("UserDAO.deleteUser", vo);
	}

	public void updateUser(UserVO vo) {
		sqlSession.update("UserDAO.updateUser", vo);
	}


	public UserVO selectById(String u_id) {
		return sqlSession.selectOne("UserDAO.selectById", u_id);

	}

}
