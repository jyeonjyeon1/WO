package three.aws.wo.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.user.dao.UserReviewDAO;
import three.aws.wo.user.service.UserReviewService;
import three.aws.wo.user.vo.ReviewVO;
@Service
public class UserReviewServiceImpl implements UserReviewService {
	@Autowired
	private UserReviewDAO userReviewDAO;
	
	@Override
	public List<ReviewVO> reviewList(String u_id) {
		return userReviewDAO.reviewList(u_id);
	}

	@Override
	public void insertReview(ReviewVO vo) {
		userReviewDAO.insertReview(vo);
	}

	@Override
	public String getOrderCode() throws Exception {
		return userReviewDAO.getOrderCode();
	}

	
	
	

}
