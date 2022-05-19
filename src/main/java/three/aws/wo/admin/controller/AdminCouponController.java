package three.aws.wo.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.admin.service.ACouponService;
import three.aws.wo.admin.vo.CouponVO;

@Controller
public class AdminCouponController {
	
	@Autowired
	private ACouponService aCouponService;

	@RequestMapping("/coupon_mng.admin")
	public String couponList(CouponVO vo, Model model) {
		List<CouponVO> couponList = aCouponService.couponList();
		System.out.println(couponList);
		model.addAttribute("couponList", couponList);
		return "/user/coupon_mng";
	}
	
	
	@RequestMapping("/addCoupon.admin")
	public String insertCoupon(CouponVO vo) throws Exception {
		if(vo.isCt_type() == false)
			aCouponService.insertToAllCoupon(vo);
		else if(vo.isCt_type() == true)
			aCouponService.insertToOneCoupon(vo);
		System.out.println("¸®ºä µî·Ï");
		return "redirect:/coupon_mng.admin";
	}
}