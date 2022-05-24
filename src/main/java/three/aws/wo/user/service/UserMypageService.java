package three.aws.wo.user.service;

import java.util.HashMap;
import java.util.List;

import three.aws.wo.admin.vo.CouponVO;
import three.aws.wo.admin.vo.PointVO;
import three.aws.wo.user.util.Criteria;
import three.aws.wo.user.vo.ReviewVO;
import three.aws.wo.user.vo.UserWishVO;

public interface UserMypageService {
	List<ReviewVO> reviewList(String u_id);
	void insertReview(ReviewVO vo) throws Exception;
	String getOrderCode() throws Exception;
	void myWish(HashMap<String, String> wish);
	List<PointVO> userPointList(String u_id);
	List<CouponVO> usableCouponList(String u_id);
	List<CouponVO> usedCouponList(String u_id);
	List<UserWishVO> myWishList(String storeName);
	int listCountCriteria(Criteria cri);
}
