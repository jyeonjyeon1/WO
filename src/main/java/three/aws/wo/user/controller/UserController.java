package three.aws.wo.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

//	==================== customer ============================

	@GetMapping("/faq.user")
	public String tofaqPage() {
		System.out.println("faq");
		return "/customer/customer_faq";
	}

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
	@GetMapping("/list.user")
	public String tolistPage() {
		System.out.println("list");
		return "/index/index_list";
	}

	@GetMapping("/map.user")
	public String tomapPage() {
		System.out.println("map");
		return "/index/index_map";
	}

	@GetMapping("/index.user")
	public String toIndexPage() {
		System.out.println("유저컨트롤러 왔따");
		return "/index/index";
	}

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

	@GetMapping("/privacyTerm.user")
	public String toprivacyTermPage() {
		System.out.println("privacyTerm");
		return "/info/info_privacyTerm";
	}

	@GetMapping("/storeInquiry.user")
	public String tostoreInquiryPage() {
		System.out.println("storeInquiry");
		return "/info/info_storeInquiry";
	}

	@GetMapping("/termOfService.user")
	public String totermOfServicePage() {
		System.out.println("termOfService");
		return "/info/info_termOfService";
	}

//	==================== login ============================

	@GetMapping("/login.user")
	public String tologinPage() {
		System.out.println("로그인화면");
		return "/login/login_login";
	}

	@GetMapping("/register.user")
	public String toregisterPage() {
		System.out.println("회원가입화면");
		return "/login/login_register";
	}

	@GetMapping("/register2.user")
	public String toregister2Page() {
		System.out.println("회원가입화면2");
		return "/login/login_register2";
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
	
//	==================== mypage ============================

	@GetMapping("/cart.user")
	public String tocartPage() {
		System.out.println("cart");
		return "/order/order_cart";
	}
	
	@GetMapping("/menuList.user")
	public String tomenuListPage() {
		System.out.println("menuList");
		return "/order/order_menuList";
	}
	
	@GetMapping("/myOrder.user")
	public String tomyOrderPage() {
		System.out.println("myOrder");
		return "/order/order_myOrder";
	}
	
	@GetMapping("/myOrderList.user")
	public String tomyOrderListPage() {
		System.out.println("myOrderList");
		return "/order/order_myOrderList";
	}
	
	@GetMapping("/storeList.user")
	public String tostoreListPage() {
		System.out.println("storeList");
		return "/order/order_storeList";
	}
}
