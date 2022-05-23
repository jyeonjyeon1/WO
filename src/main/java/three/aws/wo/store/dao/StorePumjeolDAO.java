package three.aws.wo.store.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class StorePumjeolDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public void updateMenuPumjeol(HashMap<String, Object> map) {
		sqlSession.update("StorePumjeolDAO.updateMenuPumjeol",map);
	}
	
	public void updateMenuPumjeol_MAO(HashMap<String, Object> map) {
		sqlSession.update("StorePumjeolDAO.updateMenuPumjeol_MAO",map);
	}
	
	
}
