package three.aws.wo.user.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.controller.UserStoreController;
import three.aws.wo.user.vo.SearchVO;

@Repository
public class UStoreDAO {
	@Autowired
	private SqlSessionTemplate sqlSession; 

	
	public List<StoreVO> storeList(){
		return sqlSession.selectList("UStoreDAO.storeList");
	}
	
	public List<StoreVO> storeListByPage(SearchVO searchvo) {
		return sqlSession.selectList("UStoreDAO.storeListByPage",searchvo);
	}
	
	public List<StoreVO> UserPageChange(HashMap<String, Integer> param) {
		return sqlSession.selectList("UStoreDAO.UserPageChange", param);
	}

	public int storeListByPageCount(SearchVO searchvo) {
		return sqlSession.selectOne("UStoreDAO.storeListByPageCount", searchvo);
	}

	
}