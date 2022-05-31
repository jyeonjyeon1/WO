package three.aws.wo.store.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.store.dao.StoreReviewDAO;
import three.aws.wo.store.service.StoreReviewService;
import three.aws.wo.store.vo.StoreReviewVO;

@Service
public class StoreReviewServiceImpl implements StoreReviewService {
	@Autowired
	private StoreReviewDAO storeReviewDAO;

	@Override
	public List<StoreReviewVO> reviewlist(String si_code) {
		return storeReviewDAO.reviewlist(si_code);
	}
	
	@Override
	public void reviewanswer(StoreReviewVO vo) {
		storeReviewDAO.reviewanswer(vo);
	}
	
}
