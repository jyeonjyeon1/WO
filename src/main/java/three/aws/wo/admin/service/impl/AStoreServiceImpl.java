package three.aws.wo.admin.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.admin.dao.AStoreDAO;
import three.aws.wo.admin.service.AStoreService;
import three.aws.wo.store.vo.FranchiseVO;
import three.aws.wo.store.vo.StoreFormVO;
import three.aws.wo.store.vo.StoreMenuVO;
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

	@Override
	public void deleteJoinInq(int f_seq) {
		aStoreDAO.deleteJoinInq(f_seq);
	}

	@Override
	public void deletePending(int sf_seq) {
		aStoreDAO.deletePending(sf_seq);
	}

	@Override
	public void updateStoreInfo(StoreVO vo) {
		aStoreDAO.updateStoreInfo(vo);
	}

	@Override
	public String getOriginalPass(StoreVO vo) {
		return aStoreDAO.getOriginalPass(vo);
	}

	@Override
	public void updateStoreAccount(StoreVO vo) {
		aStoreDAO.updateStoreAccount(vo);
	}

	@Override
	public String getOriginalBankbook(StoreVO vo) {
		return aStoreDAO.getOriginalBankbook(vo);
	}

	@Override
	public String getOriginalBussReg(StoreVO vo) {
		return aStoreDAO.getOriginalBussReg(vo);
	}

	@Override
	public List<StoreMenuVO> pendingMenuImg() {
		return aStoreDAO.pendingMenuImg();
	}
	
	@Override
	public void confirmMenuImg(HashMap<String, String> param) {
		aStoreDAO.confirmMenuImg(param);
	}
	@Override
	public void rejectMenuImg(HashMap<String, String> param) {
		aStoreDAO.rejectMenuImg(param);
	}
	@Override
	public void updateStoreImage(HashMap<String, String> param) {
		aStoreDAO.updateStoreImage(param);
	}
}
