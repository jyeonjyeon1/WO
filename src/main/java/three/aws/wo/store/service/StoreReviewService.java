package three.aws.wo.store.service;

import java.util.List;

import three.aws.wo.store.vo.StoreReviewVO;

public interface StoreReviewService {
	List<StoreReviewVO> reviewlist();
	
	void reviewanswer(StoreReviewVO vo) throws Exception;
}
