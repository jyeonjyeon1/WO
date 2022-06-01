package three.aws.wo.user.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.admin.vo.CouponVO;
import three.aws.wo.admin.vo.PointVO;
import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.dao.UserMypageDAO;
import three.aws.wo.user.service.UserMypageService;
import three.aws.wo.user.util.Criteria;
import three.aws.wo.user.vo.ReviewVO;
import three.aws.wo.user.vo.UserVO;
import three.aws.wo.user.vo.UserWishVO;

@Controller
public class UserMypageController {
	@Autowired
	private UserMypageDAO userMypageDAO;
	
	@Autowired
	private UserMypageService userMypageService;

	@RequestMapping("/myReviewList.user")
	public String reviewList(ReviewVO vo, Model model, HttpSession session) {
		
		String u_id = "";
		UserVO uv = (UserVO) session.getAttribute("userSession");
		if(uv == null) {
			u_id = "No_Data";
		}
		else if (uv != null) {
			u_id = uv.getU_id();
		}
		List<ReviewVO> reviewList = userMypageService.reviewList(u_id);
		model.addAttribute("reviewList" ,reviewList);
		
		return "/mypage/mypage_myReviewList";
	}
	
	
	@RequestMapping("/myReview.user")
	public String myReview(Model model,HttpServletRequest request) throws Exception {
		String o_code = request.getParameter("order");
		StoreVO storeInfo = userMypageDAO.storeInfo(o_code);
		model.addAttribute("storeInfo", storeInfo);
		
		model.addAttribute("getOrderCode", o_code);
		return "/mypage/mypage_myReview";
	}
	
	
	@RequestMapping("/insertReview.user")
	public String insertNotice(ReviewVO vo) throws Exception {
		userMypageService.insertReview(vo);
		System.out.println("insertNotice");
		return "redirect:/myReviewList.user";
	}
	
	@RequestMapping("/myPoint.user")
	public String userPointList(Model model, HttpSession session) {
		UserVO vo = (UserVO) session.getAttribute("userSession");
		if (vo == null) { // 나중에 interceptor
			return "/login/login_login";
		}
		String u_id = vo.getU_id();
		List<PointVO> userPointList = userMypageService.userPointList(u_id);
		System.out.println(userPointList);
		model.addAttribute("userPointList", userPointList);
		return "/mypage/mypage_myPoint";
	}
	
	// 위시리스트 
	@RequestMapping(value="/myWishCount.user")
	public void myWishCount(HttpSession session, Model model) {
		
		UserVO userSession = (UserVO) session.getAttribute("userSession");
		String u_id = userSession.getU_id();
		
		int wishCount = userMypageService.myWishListCount(u_id);
		System.out.println("wishCount --" + wishCount);
		model.addAttribute("myWishListCount", wishCount);

	}
		
	// 위시리스트 
	@ResponseBody
	@RequestMapping(value="/myWish.user", method=RequestMethod.POST)
	public void myWish(@RequestBody HashMap<String, String> param, HttpSession session,UserWishVO userWishVO) {
		
		HashMap<String, String> wish = new HashMap<String, String>();
		
		UserVO userSession = (UserVO) session.getAttribute("userSession");
		String u_id = userSession.getU_id();
		String si_code = param.get("storecode");
		
		System.out.println(u_id);
		System.out.println(si_code);
		
		wish.put("u_id", u_id);
		wish.put("si_code", si_code);
		
		userMypageService.myWish(wish);

	}

	// 위시리스트 
	@RequestMapping(value="/myWishList.user")
	public String myWishList(HttpSession session, Model model,HttpServletRequest request) {
		String pagnum = request.getParameter("page");
		UserVO userSession = (UserVO) session.getAttribute("userSession");
		String u_id = userSession.getU_id();
		int wishCount = userMypageService.myWishListCount(u_id);
		
		UserWishVO vo = new UserWishVO();
		Criteria cri = new Criteria();
		vo.setU_id(u_id);
		vo.setCri(cri);
		
		List<UserWishVO> wishList = userMypageService.myWishList(vo);
		System.out.println(wishList);
		System.out.println(wishCount);
		
		model.addAttribute("cri", cri);
		model.addAttribute("myWishList", wishList);
		model.addAttribute("myWishListCount", wishCount);
		
		if(pagnum != null) {
			int wish = Integer.parseInt(pagnum);
			wishCount = userMypageService.myWishListCount(u_id);
			
			vo = new UserWishVO();
			cri = new Criteria(wish, 3);
			vo.setU_id(u_id);
			vo.setCri(cri);
			
			wishList = userMypageService.myWishList(vo);
			System.out.println(wishList);
			System.out.println("wish ===>" + cri.getPageNum());
			model.addAttribute("cri",cri);
			model.addAttribute("myWishList", wishList);
			model.addAttribute("myWishListCount", wishCount);
		}
		
		
		return "/mypage/mypage_myWishList";
	}
	
	@RequestMapping("/myCoupon.user")
	public String userCouponList(Model model, HttpSession session) {
		UserVO vo = (UserVO) session.getAttribute("userSession");
		if (vo == null) { // 나중에 interceptor
			return "/login/login_login";
		}
		String u_id = vo.getU_id();
		List<CouponVO> usableCouponList = userMypageService.usableCouponList(u_id);
		model.addAttribute("usableCouponList", usableCouponList);
		List<CouponVO> usedCouponList = userMypageService.usedCouponList(u_id);
		model.addAttribute("usedCouponList", usedCouponList);
		return "/mypage/mypage_myCoupon";
	}
	
}