package three.aws.wo.store.service;

import java.util.List;

import three.aws.wo.store.vo.StoreMenuGroupVO;
import three.aws.wo.store.vo.StoreMenuVO;

public interface SMenuService {
	
	List<StoreMenuVO> storeMenuList(String storeName);
	List<StoreMenuGroupVO> storeMgList(String storeName);
}
