package three.aws.wo.user.dao;

import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.user.vo.UserVO;

@Repository
public class UserLoginDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int userLoginCheck(HashMap<String, String> param) {
		return sqlSession.selectOne("UserLoginDAO.userLoginCheck", param);
	}

	public UserVO loggedin(String u_id, String rememberId, HttpSession session, HttpServletResponse response) {
		return sqlSession.selectOne("UserLoginDAO.loggedin", u_id);
	}

	public int kakaoLogin(HashMap<String, Object> string, String u_id) {
		
		return sqlSession.selectOne("UserLoginDAO.userLoginCheck", u_id);
	}

	

}
