package three.aws.wo.user.service;

import java.util.List;

import three.aws.wo.admin.vo.BannerVO;
import three.aws.wo.store.vo.IndexVO;


public interface IndexService {
	List<IndexVO> myStoreList(String u_id);
	
	List<IndexVO> newStoreList();
	
	List<IndexVO> recStoreList();
	
	
	List<IndexVO> todayDrinkList();

	List<BannerVO> eventBoardList();
}