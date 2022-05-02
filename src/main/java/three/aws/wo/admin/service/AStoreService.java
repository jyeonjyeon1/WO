package three.aws.wo.admin.service;

import java.util.List;

import three.aws.wo.store.vo.StoreVO;

public interface AStoreService {
	List<StoreVO> storeList();
	void insertStoreInfo(StoreVO vo);
	void insertStoreAccount(StoreVO vo);
}
