package three.aws.wo.store.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SInfoDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void updateTel(HashMap<String, String> map) {
		sqlSession.update("SInfoDAO.updateTel",map);
	}
	public void updatePyeon2(HashMap<String, Object> map) {
		sqlSession.update("SInfoDAO.updatePyeon2",map);
	}
	
	public void updateSiStatus(HashMap<String, Object> map) {
		sqlSession.update("SInfoDAO.updateSiStatus",map);
	}
	
	public void updateAllday(HashMap<String, Object> map) {
		sqlSession.update("SInfoDAO.updateAllday",map);
	}
	
	public void updateHoliday(HashMap<String, Object> map) {
		sqlSession.update("SInfoDAO.updateHoliday",map);
	}
}
