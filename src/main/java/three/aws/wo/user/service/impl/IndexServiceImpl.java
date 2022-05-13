package three.aws.wo.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.store.vo.IndexVO;
import three.aws.wo.user.dao.IndexDAO;
import three.aws.wo.user.service.IndexService;
@Service
public class IndexServiceImpl implements IndexService {
	@Autowired
	private IndexDAO indexDAO;
	
	@Override
	public List<IndexVO> myStoreList(String u_id){
		return indexDAO.myStoreList(u_id);
	}

	@Override
	public List<IndexVO> newStoreList() {
		return indexDAO.newStoreList();
	}

	@Override
	public List<IndexVO> recStoreList() {
		return indexDAO.recStoreList();
	}

	
	@Override
	public List<IndexVO> todayDrinkList() {
		return indexDAO.todayDrinkList();
	}

	@Override
	public List<IndexVO> eventBoardList() {
		return indexDAO.eventBoardList();
	}


}