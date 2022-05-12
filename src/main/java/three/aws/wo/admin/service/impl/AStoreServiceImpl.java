package three.aws.wo.admin.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.admin.dao.AStoreDAO;
import three.aws.wo.admin.service.AStoreService;
import three.aws.wo.store.vo.FranchiseVO;
import three.aws.wo.store.vo.StoreFormVO;
import three.aws.wo.store.vo.StoreVO;
@Service
public class AStoreServiceImpl implements AStoreService {
	@Autowired
	private AStoreDAO aStoreDAO;
	
	@Override
	public List<StoreVO> storeList() {
		return aStoreDAO.storeList();
	}

	@Override
	public void insertStoreInfo(StoreVO vo) {
		aStoreDAO.insertStoreInfo(vo);
	}
	
	@Override
	public void insertStoreAccount(StoreVO vo) {
		aStoreDAO.insertStoreAccount(vo);
	}

	@Override
	public List<FranchiseVO> storeInquiryList() {
		return aStoreDAO.storeInquiryList();
	}

	@Override
	public void insertStoreInquiry(FranchiseVO vo) {
		aStoreDAO.insertStoreInquiry(vo);
		
	}

	@Override
	public void storeInqAccept(int f_seq) {
		aStoreDAO.storeInqAccept(f_seq);
	}

	@Override
	public void insertStoreForm(StoreFormVO vo) {
		aStoreDAO.insertStoreForm(vo);
	}

	@Override
	public List<StoreFormVO> storePendingList() {
		return aStoreDAO.storePendingList();
	}

	@Override
	public void updateStore(HashMap<String, String> change) {
		aStoreDAO.updateStore(change);
	}

	@Override
	public int checkStore(String sf_code) {
		return aStoreDAO.checkStore(sf_code);
	}

	@Override
	public StoreVO storeOne(String si_code) {
		return aStoreDAO.storeOne(si_code);
	}

	@Override
	public void replicateStoreInfo(String sf_code) {
		aStoreDAO.replicateStoreInfo(sf_code);
	}

	@Override
	public void replicateStoreAccount(String sf_code) {
		aStoreDAO.replicateStoreAccount(sf_code);
	}

}
