package three.aws.wo.user.dao;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.user.vo.SearchKeywordVO;
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

	public int snsLogin(String sns_id) {
		if(sqlSession.selectOne("UserLoginDAO.snsLogin", sns_id)==null) {
			return 0;
		}
		return sqlSession.selectOne("UserLoginDAO.snsLogin", sns_id);
	}

	public UserVO encryption(String u_id) throws Exception {
		return sqlSession.selectOne("UserLoginDAO.encryption", u_id);
	}

	public void insertSNSUser(String kakaoId) {
		sqlSession.insert("UserLoginDAO.insertSNSUser", kakaoId);
	}

	public int checkSNSUser(int sns_seq) {
		return sqlSession.selectOne("UserLoginDAO.checkSNSUser", sns_seq);
	}

	public List<SearchKeywordVO> searchKeywords() {
		return sqlSession.selectList("UserLoginDAO.searchKeywords");
	}

}
