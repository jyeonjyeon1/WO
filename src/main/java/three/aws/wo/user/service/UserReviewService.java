package three.aws.wo.user.service;

import java.util.List;

import three.aws.wo.user.vo.ReviewVO;

public interface UserReviewService {
	List<ReviewVO> reviewList(String u_id);
	void insertReview(ReviewVO vo) throws Exception;
	String getOrderCode() throws Exception;

}
