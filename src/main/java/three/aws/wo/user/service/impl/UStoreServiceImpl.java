package three.aws.wo.user.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.dao.UStoreDAO;
import three.aws.wo.user.service.UStoreService;

@Service
public class UStoreServiceImpl implements UStoreService {
	@Autowired
	private UStoreDAO uStoreDAO;
	
	@Override
	public List<StoreVO> storeList(){
		return uStoreDAO.storeList();
	}
	
	@Override
	public List<StoreVO> storeListByPage(String SearchWord){
		return uStoreDAO.storeListByPage(SearchWord);
	}
	

	@Override
	public List<StoreVO> UserPageChange(HashMap<String, Integer> param) {
		return uStoreDAO.UserPageChange(param);
	}
	
	
}