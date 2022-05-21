package three.aws.wo.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
	
	@RequestMapping("/coupon_user_add.admin")
	public String couponUserList(CouponVO vo, Model model) {
		List<CouponVO> couponTemplateList = aCouponService.couponTemplateList();
		model.addAttribute("couponTemplateList", couponTemplateList);
		List<CouponVO> couponUserList = aCouponService.couponUserList();
		model.addAttribute("couponUserList", couponUserList);
		return "/user/coupon_user_add";
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
	

	@RequestMapping("/addUserCoupon.admin")
	public String insertUserCoupon(CouponVO vo) throws Exception {
		aCouponService.insertToUserCoupon(vo);
		return "redirect:/coupon_mng.admin";
	}
}