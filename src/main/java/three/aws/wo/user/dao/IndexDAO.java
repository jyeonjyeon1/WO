package three.aws.wo.user.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.admin.vo.BannerVO;
import three.aws.wo.store.vo.IndexVO;
import three.aws.wo.user.vo.BasketVO;

@Repository
public class IndexDAO {
	@Autowired
	private SqlSessionTemplate sqlSession; 

	
	public List<IndexVO> myStoreList(String u_id){
		return sqlSession.selectList("IndexDAO.myStoreList", u_id);
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
	
	public List<BannerVO> eventBoardList(){
		return sqlSession.selectList("IndexDAO.eventBoardList");
	}

	public List<IndexVO> addrStoreList(HashMap<String,String> loc) {
		return sqlSession.selectList("IndexDAO.addrStoreList",loc);
	}

}