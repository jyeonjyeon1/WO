package three.aws.wo.admin.service;

import java.util.List;

import three.aws.wo.admin.vo.CouponVO;

public interface ACouponService {
	List<CouponVO> couponList();
	void insertToAllCoupon(CouponVO vo) throws Exception;
	void insertToOneCoupon(CouponVO vo) throws Exception;
}
