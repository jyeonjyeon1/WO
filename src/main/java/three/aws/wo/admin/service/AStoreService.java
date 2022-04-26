package three.aws.wo.admin.service;

import java.util.List;

import three.aws.wo.store.vo.StoreVO;

public interface AStoreService {
	List<StoreVO> storeList();
	void insertStore(StoreVO vo);
}
