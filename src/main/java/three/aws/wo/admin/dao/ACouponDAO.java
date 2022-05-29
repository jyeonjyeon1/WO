package three.aws.wo.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.admin.vo.CouponVO;

@Repository
public class ACouponDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<CouponVO> couponList() {
		return sqlSession.selectList("ACouponDAO.couponList");
	}
	
	public List<CouponVO> couponTemplateList() {
		return sqlSession.selectList("ACouponDAO.couponTemplateList");
	}
	
	public List<CouponVO> couponUserList() {
		return sqlSession.selectList("ACouponDAO.couponUserList");
	}

	public void insertToAllCoupon(CouponVO vo) {
		sqlSession.insert("ACouponDAO.insertToAllCoupon", vo);
	}
	
	public void insertToOneCoupon(CouponVO vo) {
		sqlSession.insert("ACouponDAO.insertToOneCoupon", vo);
	}

	public void insertToUserCoupon(CouponVO vo) {
		sqlSession.insert("ACouponDAO.insertToUserCoupon", vo);
	}
}
