package three.aws.wo.user.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.admin.vo.CouponVO;
import three.aws.wo.admin.vo.PointVO;
import three.aws.wo.user.vo.ReviewVO;
import three.aws.wo.user.vo.UserWishVO;

@Repository
public class UserMypageDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<ReviewVO> reviewList(String u_id) {
		return sqlSession.selectList("UserMypageDAO.reviewList", u_id);
	}

	public void insertReview(ReviewVO vo) {
		sqlSession.insert("UserMypageDAO.insertReview", vo);
	}

	public String getOrderCode() {
		return sqlSession.selectOne("UserMypageDAO.getOrderCode");
	}
	
	public void myWish(HashMap<String, String> wish) {
		sqlSession.insert("UserMypageDAO.myWish", wish);
	}

	public List<UserWishVO> myWishList(String storeName) {
		return sqlSession.selectList("UserMypageDAO.myWishList",storeName);
	}
	
	public List<PointVO> userPointList(String u_id) {
		return sqlSession.selectList("UserMypageDAO.userPointList", u_id);
	}

	public List<CouponVO> usableCouponList(String u_id) {
		return sqlSession.selectList("UserMypageDAO.usableCouponList", u_id);
	}
	
	public List<CouponVO> usedCouponList(String u_id) {
		return sqlSession.selectList("UserMypageDAO.usedCouponList", u_id);
	}
}
