package three.aws.wo.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.admin.dao.AdminReviewDAO;
import three.aws.wo.admin.service.AReviewService;
import three.aws.wo.user.vo.ReviewVO;

@Service
public class AReviewServiceImpl implements AReviewService {

	@Autowired 
	private AdminReviewDAO adminReviewDAO;
	
	@Override
	public List<ReviewVO> reviewList() {
		return adminReviewDAO.reviewList();
	}

	@Override
	public void updateReview(ReviewVO vo) throws Exception {
		adminReviewDAO.updateReview(vo);
	}
	
}
