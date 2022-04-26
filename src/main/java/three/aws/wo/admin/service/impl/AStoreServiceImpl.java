package three.aws.wo.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.admin.dao.AStoreDAO;
import three.aws.wo.admin.service.AStoreService;
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
	public void insertStore(StoreVO vo) {
		aStoreDAO.insertStore(vo);
	}

}
