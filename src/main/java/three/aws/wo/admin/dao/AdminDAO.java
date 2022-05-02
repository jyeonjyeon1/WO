package three.aws.wo.admin.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int adminLogin(HashMap<String, String> param) {
		return sqlSession.selectOne("AdminDAO.adminLogin",param);
	}
	public String getAdminName(String a_id) {
		return sqlSession.selectOne("AdminDAO.getAdminName",a_id);
	}
}
