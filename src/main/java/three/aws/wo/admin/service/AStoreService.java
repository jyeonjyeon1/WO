package three.aws.wo.admin.service;

import java.util.List;

import three.aws.wo.store.vo.FranchiseVO;
import three.aws.wo.store.vo.StoreVO;

public interface AStoreService {
	List<StoreVO> storeList();
	void insertStoreInfo(StoreVO vo);
	void insertStoreAccount(StoreVO vo);
	
	List<FranchiseVO> storeInquiryList();
	void insertStoreInquiry(FranchiseVO vo);
	void storeInqAccept(int f_seq);
}
