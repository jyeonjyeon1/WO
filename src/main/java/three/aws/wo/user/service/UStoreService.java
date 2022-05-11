package three.aws.wo.user.service;

import java.util.HashMap;
import java.util.List;

import three.aws.wo.store.vo.StoreVO;


public interface UStoreService {
	List<StoreVO> storeList();
	List<StoreVO> storeListByPage(String SearchWord);
	List<StoreVO> UserPageChange(HashMap<String, Integer> param);
}