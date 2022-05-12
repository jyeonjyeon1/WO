package three.aws.wo.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.store.vo.IndexVO;

@Repository
public class IndexDAO {
	@Autowired
	private SqlSessionTemplate sqlSession; 

	
	public List<IndexVO> myStoreList(){
		return sqlSession.selectList("IndexDAO.myStoreList");
	}
	
	public List<IndexVO> newStoreList(){
		return sqlSession.selectList("IndexDAO.newStoreList");
	}
	
	public List<IndexVO> recStoreList(){
		return sqlSession.selectList("IndexDAO.recStoreList");
	}
	
	public List<IndexVO> todayDrinkList(){
		return sqlSession.selectList("IndexDAO.todayDrinkList");
	}
	
	public List<IndexVO> eventBoardList(){
		return sqlSession.selectList("IndexDAO.eventBoardList");
	}
}