package three.aws.wo.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.admin.dao.AStoreDAO;
import three.aws.wo.admin.service.AStoreService;
import three.aws.wo.store.vo.FranchiseVO;
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

}
