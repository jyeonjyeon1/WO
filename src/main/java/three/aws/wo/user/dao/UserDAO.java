package three.aws.wo.user.dao;


import java.util.HashMap;

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
	
	public UserVO infoUser(UserVO vo) {
		return sqlSession.selectOne("UserDAO.infoUser", vo);
	}

	// 아이디 중복 체크
	public int idChk(UserVO vo) throws Exception {
		return sqlSession.selectOne("UserDAO.idChk", vo);
	}

	public UserVO findId(String vo) {
		return sqlSession.selectOne("UserDAO.findId", vo);
		
	}

	public UserVO findPassword(HashMap<String, String> idtel) {
		return sqlSession.selectOne("UserDAO.findPassword", idtel);
	}

	public void updatePassword(HashMap<String, String> idpw) {
		sqlSession.update("UserDAO.updatePassword", idpw);
	}

	public void regPointRecord(String u_id) {
		sqlSession.insert("UserDAO.regPointRecord", u_id);
	}
}
