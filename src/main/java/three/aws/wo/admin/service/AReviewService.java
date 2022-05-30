package three.aws.wo.admin.service;

import java.util.List;

import three.aws.wo.user.vo.ReviewVO;

public interface AReviewService {
	List<ReviewVO> reviewList();
	
	void updateReview(ReviewVO vo) throws Exception;
}
