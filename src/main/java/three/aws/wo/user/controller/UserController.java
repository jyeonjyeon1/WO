package three.aws.wo.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import three.aws.wo.user.service.UserService;
import three.aws.wo.user.vo.UserVO;

@Controller
public class UserController {
	@Autowired
	private UserService userService;


//	==================== inc ============================
	@GetMapping("/footer.user")
	public String tofooterPage() {
		System.out.println("footer");
		return "/inc/footer";
	}

	@GetMapping("/header.user")
	public String toheaderPage() {
		System.out.println("header");
		return "/inc/header";
	}

//	==================== index ============================
//	@GetMapping("/list.user")
//	public String tolistPage() {
//		System.out.println("list");
//		return "/index/index_list";
//	}

	@GetMapping("/map.user")
	public String tomapPage() {
		System.out.println("map");
		return "/index/index_map";
	}

//	@GetMapping("/index.user")
//	public String toIndexPage() {
//		System.out.println("index");
//		return "/index/index";
//	}

//	==================== info ============================

	@GetMapping("/aboutWO.user")
	public String toaboutWOPage() {
		System.out.println("aboutWO");
		return "/info/info_aboutWO";
	}

	@GetMapping("/howToUse.user")
	public String tohowToUsePage() {
		System.out.println("howToUse");
		return "/info/info_howToUse";
	}

//	@GetMapping("/storeInquiry.user")
//	public String tostoreInquiryPage() {
//		System.out.println("storeInquiry");
//		return "/info/info_storeInquiry";
//	}

//	==================== login ============================

	@GetMapping("/joined.user")
	public String toregisterComplete() {
		return "/login/login_joined";
	}

	@GetMapping("/join.user")
	public String toregisterPage(HttpSession session) {
		if(session.getAttribute("userSession")==null) {
			return "/login/login_register2";
		}else {
			return "/index/index";
		}
	}
	
//	==================== mypage ============================

	@GetMapping("/currentOrder.user")
	public String tocurrentOrderPage() {
		System.out.println("currentOrder");
		return "/mypage/mypage_currentOrder";
	}
	
	@GetMapping("/mypage.user")
	public String tomainPage() {
		System.out.println("main");
		return "/mypage/mypage_main";
	}
	
	@GetMapping("/myCoupon.user")
	public String tomyCouponPage() {
		System.out.println("myCoupon");
		return "/mypage/mypage_myCoupon";
	}
	
	@GetMapping("/myPoint.user")
	public String tomyPointPage() {
		System.out.println("myPoint");
		return "/mypage/mypage_myPoint";
	}
	
	@GetMapping("/myReview.user")
	public String tomyReviewPage() {
		System.out.println("myReview");
		return "/mypage/mypage_myReview";
	}
	
	@GetMapping("/myReviewList.user")
	public String tomyReviewListPage() {
		System.out.println("myReviewList");
		return "/mypage/mypage_myReviewList";
	}

	@GetMapping("/myWishList.user")
	public String tomyWishListPage() {
		System.out.println("myWishList");
		return "/mypage/mypage_myWishList";
	}

	@GetMapping("/myOrderList.user")
	public String tomyOrderListPage() {
		System.out.println("myOrderList");
		return "/mypage/mypage_myOrderList";
	}
	
	@RequestMapping(value="/myChoice.user", method = RequestMethod.GET)
	public String tomyInfoPage() throws Exception{
		System.out.println("tomyInfoPage_get");
		return "/mypage/mypage_choice";
	}
	
	// 회원 탈퇴 post
	@RequestMapping(value="/myChoice.user", method = RequestMethod.POST)
	public String tomyInfoPage(UserVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		System.out.println("tomyInfoPage_post");
		// 세션에 있는 member를 가져와 member변수에 넣어줍니다.
		UserVO userSession = (UserVO) session.getAttribute("userSession");
		System.out.println("세션 얻음");
		// 세션에있는 비밀번호
		String sessionPass = userSession.getU_password();
		System.out.println("세션 비밀번호");
		// vo로 들어오는 비밀번호
		String voPass = vo.getU_password();
		
		if(!(sessionPass.equals(voPass))) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/mypage/mypage_choice";
		}
		userService.infoUser(vo);
		return "/mypage/mypage_choice2";
	}
	

//	==================== order ============================

	@GetMapping("/menuList.user")
	public String tomenuListPage() {
		System.out.println("menuList");
		return "/order/order_menuList";
	}
	
}