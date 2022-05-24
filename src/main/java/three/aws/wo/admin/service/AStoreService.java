package three.aws.wo.admin.service;

import java.util.HashMap;
import java.util.List;

import three.aws.wo.store.vo.FranchiseVO;
import three.aws.wo.store.vo.StoreFormVO;
import three.aws.wo.store.vo.StoreVO;

public interface AStoreService {
	List<StoreVO> storeList();
	void insertStoreInfo(StoreVO vo);
	void insertStoreAccount(StoreVO vo);
	
	List<FranchiseVO> storeInquiryList();
	void insertStoreInquiry(FranchiseVO vo);
	void storeInqAccept(int f_seq);
	void insertStoreForm(StoreFormVO vo);
	List<StoreFormVO> storePendingList();
	void updateStore(HashMap<String, String> change);
	int checkStore(String sf_code);
	StoreVO storeOne(String si_code);
	void replicateStoreInfo(String sf_code);
	void replicateStoreAccount(String sf_code);
	void deleteJoinInq(int f_seq);
	void deletePending(int sf_seq);
	void updateStoreInfo(StoreVO vo);
	String getOriginalPass(StoreVO vo);
	void updateStoreAccount(StoreVO vo);
	String getOriginalBankbook(StoreVO vo);
	String getOriginalBussReg(StoreVO vo);
}
