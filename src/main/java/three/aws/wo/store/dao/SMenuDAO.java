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
		return sqlSession.selectList("SMenuDAO.optionList",storeName);
	}
	
	public List<MenuAndOptionVO> MAOList(String storeName) {
		return sqlSession.selectList("SMenuDAO.MAOList",storeName);
	}
	
	public List<MenuBasicOptionVO> basicOpList(String storeName) {
		return sqlSession.selectList("SMenuDAO.basicOpList",storeName);
	}

	public void deleteMenuGroup(HashMap<String, String> map) {
		sqlSession.delete("SMenuDAO.deleteMenuGroup",map);
	}
	
	public void deleteMenuGroup_MAO(HashMap<String, String> map) {
		sqlSession.delete("SMenuDAO.deleteMenuGroup_MAO",map);
	}

	public void updateMenuGroup(HashMap<String, String> map) {
		sqlSession.update("SMenuDAO.updateMenuGroup",map);
	}
	
	public void updateMenuGroup_MAO(HashMap<String, String> map) {
		sqlSession.update("SMenuDAO.updateMenuGroup_MAO",map);
	}

	public String maxMgSeq(String si_code) {
		return sqlSession.selectOne("SMenuDAO.maxMgSeq",si_code);
	}

	public String maxMenuSeq(HashMap<String, Object> map) {
		return sqlSession.selectOne("SMenuDAO.maxMenuSeq",map);
	}

	public String maxOgbSeq(String si_code) {
		return sqlSession.selectOne("SMenuDAO.maxOgbSeq",si_code);
	}
	
	public String maxOpbSeq(HashMap<String, Object> map) {
		return sqlSession.selectOne("SMenuDAO.maxOpbSeq",map);
	}

	public void insertMenu(HashMap<String, Object> map) {
		sqlSession.insert("SMenuDAO.insertMenu", map);
	}

	public void insertOGB(HashMap<String, Object> map) {
		sqlSession.insert("SMenuDAO.insertOGB", map);
	}

	public int getm_seq(HashMap<String, Object> map) {
		return sqlSession.selectOne("SMenuDAO.getm_seq",map);
	}

	public int getogb_seq(HashMap<String, Object> map) {
		return sqlSession.selectOne("SMenuDAO.getogb_seq",map);
	}

	public void insertOPB(HashMap<String, Object> map) {
		sqlSession.insert("SMenuDAO.insertOPB", map);
	}

	public void updateMenu(HashMap<String, Object> map) {
		sqlSession.update("SMenuDAO.updateMenu", map);
	}

	public void updateOGB(HashMap<String, Object> map) {
		sqlSession.update("SMenuDAO.updateOGB", map);
	}

	public int ogbSeqfromMSeq(HashMap<String, Object> map) {
		Object seq = sqlSession.selectOne("SMenuDAO.ogbSeqfromMSeq",map);
		if(seq==null) {return 0;}
		return sqlSession.selectOne("SMenuDAO.ogbSeqfromMSeq",map);
	}

	public String ogbCodefromMSeq(HashMap<String, Object> map) {
		return sqlSession.selectOne("SMenuDAO.ogbCodefromMSeq",map);
	}

	public void deleteOptionBasics(HashMap<String, Object> map) {
		sqlSession.delete("SMenuDAO.deleteOptionBasics",map);
	}

	public void deleteMenu(HashMap<String, Object> map) {
		sqlSession.delete("SMenuDAO.deleteMenu",map);
	}
	
	public void deleteMenu_MAO(HashMap<String, Object> map) {
		sqlSession.delete("SMenuDAO.deleteMenu_MAO",map);
	}
	
	//option start
	public String maxOgCode(String si_code) {
		return sqlSession.selectOne("SMenuDAO.maxOgCode",si_code);
	}
	
	public String maxOpCode(HashMap<String, Object> map) {
		return sqlSession.selectOne("SMenuDAO.maxOpCode",map);
	}
	
	public void addOg(HashMap<String, Object> map) {
		sqlSession.insert("SMenuDAO.addOg",map);
	}
	public int currentOg_seq(HashMap<String, Object> map) {
		return sqlSession.selectOne("SMenuDAO.currentOg_seq",map);
	}
	
	public void addOp1(HashMap<String, Object> map) {
		sqlSession.insert("SMenuDAO.addOp1",map);
	}
	
	public void addOp2(HashMap<String, Object> map) {
		sqlSession.insert("SMenuDAO.addOp2",map);
	}
	
	public void updateOgRos(HashMap<String, Object> map) {
		sqlSession.update("SMenuDAO.updateOgRos", map);
	}
}
