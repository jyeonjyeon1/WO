package three.aws.wo.store.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.store.vo.MenuAndOptionVO;
import three.aws.wo.store.vo.MenuBasicOptionVO;
import three.aws.wo.store.vo.StoreMenuGroupVO;
import three.aws.wo.store.vo.StoreMenuVO;
import three.aws.wo.store.vo.StoreOptionGroupVO;
import three.aws.wo.store.vo.StoreOptionVO;

@Repository
public class SMenuDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public List<StoreMenuVO> storeMenuList(String storeName) {
		return sqlSession.selectList("SMenuDAO.storeMenuList",storeName);
	}
	
	public List<StoreMenuGroupVO> storeMgList(String storeName) {
		return sqlSession.selectList("SMenuDAO.storeMgList",storeName);
	}
	
	public void insertMgName(HashMap<String, String> param) {
		sqlSession.insert("SMenuDAO.insertMgName", param);
	}
	
	public List<StoreOptionGroupVO> ogList(String storeName) {
		return sqlSession.selectList("SMenuDAO.ogList",storeName);
	}
	
	public List<StoreOptionVO> optionList(String storeName) {
		return sqlSession.selectList("SMenuDAO.storeName",storeName);
	}
	
	public List<MenuAndOptionVO> MAOList(String storeName) {
		return sqlSession.selectList("SMenuDAO.MAOList",storeName);
	}
	
	public List<MenuBasicOptionVO> basicOpList(String storeName) {
		return sqlSession.selectList("SMenuDAO.basicOpList",storeName);
	}
}
