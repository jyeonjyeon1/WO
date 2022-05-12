package three.aws.wo.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.store.vo.FranchiseVO;
import three.aws.wo.store.vo.StoreFormVO;
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
	
	public List<FranchiseVO> storeInquiryList(){
		return sqlSession.selectList("AStoreDAO.storeInquiryList");
	}
	
	public void insertStoreInquiry(FranchiseVO vo) {
		sqlSession.insert("AStoreDAO.insertStoreInquiry",vo);
	}

	public void storeInqAccept(int f_seq) {
		sqlSession.update("AStoreDAO.storeInqAccept",f_seq);
	}

	public void insertStoreForm(StoreFormVO vo) {
		sqlSession.insert("AStoreDAO.insertStoreForm",vo);
	}

	public List<StoreFormVO> storePendingList() {
		return sqlSession.selectList("AStoreDAO.storePendingList");
	}

	public void updateStore(HashMap<String, String> change) {
		sqlSession.update("AStoreDAO.updateStore",change);
	}

	public int checkStore(String sf_code) {
		return sqlSession.selectOne("AStoreDAO.checkStore",sf_code);
	}
}
