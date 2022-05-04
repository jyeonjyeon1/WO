package three.aws.wo.user.controller;

import java.lang.annotation.Annotation;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import three.aws.wo.user.dao.UserDAO;
import three.aws.wo.user.service.UserService;
import three.aws.wo.user.util.AuthInfo;
import three.aws.wo.user.util.LoginCommand;
import three.aws.wo.user.vo.UserVO;

@Controller
public class UserController  implements Controller {

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

	@RequestMapping(value="/login_.user", method= {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView loginForm(LoginCommand loginCommand,
                    @CookieValue(value="REMEMBER", required=false) Cookie rememberCookie) throws Exception {
        
        if(rememberCookie!=null) {
            loginCommand.setU_id(rememberCookie.getValue());
            loginCommand.setRememberId(true);
        }
        
        ModelAndView mv = new ModelAndView("/login/login_login");
        return mv;
    }
	
	@Resource(name="userService")
    private UserService userSer;
 
    @RequestMapping(value="/login", method= {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView loginSuccess(@Valid LoginCommand loginCommand, BindingResult bindingResult,
                                    HttpSession session, HttpServletResponse response) throws Exception {
 
        if(bindingResult.hasErrors()) {
            ModelAndView mv = new ModelAndView("/login/login_login");
            return mv;
        }
        
        try {
            
            AuthInfo authInfo = userSer.loginAuth(loginCommand);
            session.setAttribute("authInfo", authInfo);
            
            Cookie rememberCookie = new Cookie("REMEMBER", loginCommand.getU_id());
            rememberCookie.setPath("/");
            if(loginCommand.isRememberId()) {
                rememberCookie.setMaxAge(60*60*24*7);
            } else {
                rememberCookie.setMaxAge(0);
            }
            response.addCookie(rememberCookie);
            
        } catch (IdPasswordNotMatchingException e) {
            bindingResult.rejectValue("pw", "notMatch", "아이디와 비밀번호가 맞지않습니다.");
            ModelAndView mv = new ModelAndView("/login/login_login");
            return mv;
        }
        
        ModelAndView mv = new ModelAndView("index/index");
        return mv;
    }


	@GetMapping("/joined.user")
	public String toregisterComplete() {
		System.out.println("회원가입완료");
		return "/login/login_joined";
	}

	@GetMapping("/join.user")
	public String toregisterPage(HttpSession session) {
		if(session.getAttribute("userSession")==null) {
			System.out.println("회원가입화면2");
			return "/login/login_register2";
		}else {
			return "/index/index";
		}
	}
	
	@RequestMapping("/logout.user")
	public String logout(HttpSession session) {
		System.out.println("로그아웃 처리");
		
		session.invalidate();
		
		return "index/index";
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

	@Override
	public Class<? extends Annotation> annotationType() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String value() {
		// TODO Auto-generated method stub
		return null;
	}
}
