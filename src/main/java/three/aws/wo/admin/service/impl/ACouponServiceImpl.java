package three.aws.wo.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.admin.dao.ACouponDAO;
import three.aws.wo.admin.service.ACouponService;
import three.aws.wo.admin.vo.CouponVO;
@Service
public class ACouponServiceImpl implements ACouponService {
	@Autowired
	private ACouponDAO aCouponDAO;
	
	@Override
	public List<CouponVO> couponList() {
		return aCouponDAO.couponList();
	}
	
	@Override
	public List<CouponVO> couponTemplateList() {
		return aCouponDAO.couponTemplateList();
	}

	@Override
	public List<CouponVO> couponUserList() {
		return aCouponDAO.couponUserList();
	}
	
	@Override
	public void insertToAllCoupon(CouponVO vo) {
		aCouponDAO.insertToAllCoupon(vo);
	}

	@Override
	public void insertToOneCoupon(CouponVO vo) {
		aCouponDAO.insertToOneCoupon(vo);
	}

	@Override
	public void insertToUserCoupon(CouponVO vo) {
		aCouponDAO.insertToUserCoupon(vo);
	}
}
