package three.aws.wo.user.service;

import java.util.HashMap;
import java.util.List;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.vo.SearchVO;


public interface UStoreService {
	List<StoreVO> storeList();
	List<StoreVO> storeListByPage(SearchVO searchvo);
	List<StoreVO> UserPageChange(HashMap<String, Integer> param);
	int storeListByPageCount(String SearchWord);
}