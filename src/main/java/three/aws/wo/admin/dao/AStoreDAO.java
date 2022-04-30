package three.aws.wo.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.store.vo.StoreVO;
@Repository
public class AStoreDAO {
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	public List<StoreVO> storeList(){
		return sqlSession.selectList("AStoreDAO.storeList");
	}

	public void insertStoreInfo(StoreVO vo) {
		sqlSession.insert("AStoreDAO.insertStoreInfo", vo);
	}
	public void insertStoreAccount(StoreVO vo) {
		sqlSession.insert("AStoreDAO.insertStoreAccount", vo);
	}
}
