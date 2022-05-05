package three.aws.wo.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.store.vo.StoreVO;

@Repository
public class UStoreDAO {
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	public List<StoreVO> storeList(){
		return sqlSession.selectList("UStoreDAO.storeList");
	}
	
	public List<StoreVO> storeListByPage() {
		return sqlSession.selectList("UStoreDAO.storeListByPage");
	}

	
}