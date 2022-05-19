package three.aws.wo.user.service;

import java.util.List;

import three.aws.wo.admin.vo.CouponVO;
import three.aws.wo.admin.vo.PointVO;
import three.aws.wo.user.vo.ReviewVO;

public interface UserMypageService {
	List<ReviewVO> reviewList(String u_id);
	void insertReview(ReviewVO vo) throws Exception;
	String getOrderCode() throws Exception;
	List<PointVO> userPointList(String u_id);
	List<CouponVO> usableCouponList(String u_id);
	List<CouponVO> usedCouponList(String u_id);
}
