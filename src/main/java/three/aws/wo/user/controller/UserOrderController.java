package three.aws.wo.user.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.service.UserOrderService;
import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.UserVO;

@Controller
public class UserOrderController {
	@Autowired
	private UserOrderService userOrderService;

	// 장바구니로 이동 메서드
	@RequestMapping("/cart.user")
	public String cartList(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model) {
		// 세션에 있는 유저를 가져옴
		UserVO vo = (UserVO) session.getAttribute("userSession");
		if (vo == null) { // 이거는 나중에 interceptor에서 처리할 것
			return "/login/login_login";
		}
		// 유저 아이디 받아옴
		String u_id = vo.getU_id();
		// 유저 아이디로 장바구니 조회 함.
		List<BasketVO> cartList = userOrderService.cartList(u_id);
		// 유저장바구니에 있는 가게 불러옴
		StoreVO cartStore = userOrderService.cartStore(u_id);

		// 장바구니 출력함.
		model.addAttribute("cartStore", cartStore);
		model.addAttribute("cartList", cartList);
		return "/order/order_cart";
	}

	// 장바구니에 있는 row 삭제메서드
	@ResponseBody
	@RequestMapping("/removeCart.user")
	public int removeCart(@RequestBody HashMap<String, String> param) throws Exception {
		int b_seq = Integer.parseInt(param.get("b_seq"));
		int result = userOrderService.removeCartCheck(b_seq);
		System.out.println(result);
		if (result == 1) {
			// userOrderService.removeCart(b_seq);
			System.out.println("장바구니 하나 제거");
		} else {
			System.out.println("사실 이럴 가능성은 없어");
		}
		return result;
	}
	
	// 장바구니에 있는 row update메서드
		@ResponseBody
		@RequestMapping("/updateCart.user")
		public int updateCart(@RequestBody HashMap<String, Integer> param) throws Exception {
			System.out.println(param);
			userOrderService.updateCart(param);
			return 1;
		}

	@RequestMapping("/myOrder.user")
	public String tomyOrderPage() {
		System.out.println("myOrder");
		return "/order/order_myOrder";
	}

	@RequestMapping(value = "/orderc.user", method = RequestMethod.POST)
	public String orderComplete() {
		return "/order/order_complete";
	}

	@RequestMapping(value = "/orderc.user", method = RequestMethod.GET)
	public String orderc() {
		return "/order/order_complete";
	}
}
