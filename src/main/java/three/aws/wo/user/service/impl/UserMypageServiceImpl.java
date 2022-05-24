package three.aws.wo.user.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.admin.vo.CouponVO;
import three.aws.wo.admin.vo.PointVO;
import three.aws.wo.user.dao.UserMypageDAO;
import three.aws.wo.user.service.UserMypageService;
import three.aws.wo.user.vo.ReviewVO;
import three.aws.wo.user.vo.UserWishVO;
@Service
public class UserMypageServiceImpl implements UserMypageService {
	@Autowired
	private UserMypageDAO userMypageDAO;
	
	@Override
	public List<ReviewVO> reviewList(String u_id) {
		return userMypageDAO.reviewList(u_id);
	}

	@Override
	public void insertReview(ReviewVO vo) {
		userMypageDAO.insertReview(vo);
	}

	@Override
	public String getOrderCode() throws Exception {
		return userMypageDAO.getOrderCode();
	}
	
	@Override
	public void myWish(HashMap<String, String> wish) {
		userMypageDAO.myWish(wish);
	}
	
	@Override
	public List<UserWishVO> myWishList(String storeName) {
		return userMypageDAO.myWishList(storeName);
	}


	@Override
	public List<PointVO> userPointList(String u_id) {
		return userMypageDAO.userPointList(u_id);
	}


	@Override
	public List<CouponVO> usableCouponList(String u_id) {
		return userMypageDAO.usableCouponList(u_id);
	}
	

	@Override
	public List<CouponVO> usedCouponList(String u_id) {
		return userMypageDAO.usedCouponList(u_id);
	}
	
}
