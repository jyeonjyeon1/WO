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

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.service.UserOrderService;
import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.OrdersVO;
import three.aws.wo.user.vo.UserVO;

@Controller
public class UserMenuListController {
	@Autowired
	private UserOrderService userOrderService;

	// 장바구니로 이동 메서드
	@RequestMapping("/cart.user")
	public String cartList(HttpSession session, Model model) {
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
	public int removeCart(@RequestBody HashMap<String, String> param, HttpSession session) throws Exception {
		int b_seq = Integer.parseInt(param.get("b_seq"));
		int result = userOrderService.removeCartCheck(b_seq);
		System.out.println(result);
		if (result == 1) {
			userOrderService.removeCart(b_seq);
			System.out.println("장바구니 하나 제거");
			UserVO vo = (UserVO) session.getAttribute("userSession");
			String userID = vo.getU_id();
			List<BasketVO> cartList = userOrderService.cartList(userID);
			// 유저장바구니에 있는 가게 불러옴
			StoreVO cartStore = userOrderService.cartStore(userID);
			// 장바구니 출력함.
			session.setAttribute("cartStoreSession", cartStore);
			session.setAttribute("cartListSession", cartList);
		} else {
			System.out.println("사실 이럴 가능성은 없어");
		}
		return result;
	}

	// 장바구니에 있는 row update메서드
	@ResponseBody
	@RequestMapping("/updateCart.user")
	public int updateCart(@RequestBody HashMap<String, Integer> param, HttpSession session) throws Exception {
		System.out.println(param);
		userOrderService.updateCart(param);
		UserVO vo = (UserVO) session.getAttribute("userSession");
		String userID = vo.getU_id();
		List<BasketVO> cartList = userOrderService.cartList(userID);
		// 유저장바구니에 있는 가게 불러옴
		StoreVO cartStore = userOrderService.cartStore(userID);
		// 장바구니 출력함.
		session.setAttribute("cartStoreSession", cartStore);
		session.setAttribute("cartListSession", cartList);
		return 1;
	}

	@RequestMapping("/myOrder.user")
	public String tomyOrderPage(HttpSession session, Model model) {
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
		System.out.println("myOrder");
		return "/order/order_myOrder";
	}

	// 결제시 seq 불러옴
	@ResponseBody
	@RequestMapping(value = "/insertOrder.user", method = RequestMethod.POST)
	public String insertOrder(@RequestBody HashMap<String, String> param) {
		System.out.println("hi");
		// 일일 주문시퀀스에 1을 더함
		int dailySeq = userOrderService.dailySeq() + 1;
		String orderBack = Integer.toString(dailySeq);
		// orderBack을 4자리 수로 변환
		if (orderBack.length() == 1) {
			orderBack = "000" + orderBack;
		} else if (orderBack.length() == 2) {
			orderBack = "00" + orderBack;
		} else if (orderBack.length() == 3) {
			orderBack = "0" + orderBack;
		}
		System.out.println(param);
		HashMap<String, Object> insertInfo = new HashMap<String, Object>();
		int o_point = Integer.parseInt(param.get("o_point"));
		insertInfo.put("u_id", param.get("u_id"));
		insertInfo.put("si_code", param.get("si_code"));
		insertInfo.put("o_request", param.get("o_request"));
		insertInfo.put("o_code", param.get("o_code") + orderBack);
		insertInfo.put("o_total_price", Integer.parseInt(param.get("o_total_price")));
		insertInfo.put("o_list", param.get("o_list"));
		insertInfo.put("o_list_detail", param.get("o_list_detail"));
		insertInfo.put("o_daily_seq", dailySeq);
		insertInfo.put("o_point", o_point);
		insertInfo.put("o_payment_list", param.get("o_payment_list"));
		if(o_point==0) {
			insertInfo.put("o_point_status", false);
		}else {
			insertInfo.put("o_point_status", true);
		}
		
		userOrderService.insertOrder(insertInfo);
		System.out.println(insertInfo);

		// 주문번호 뒷자리
		return orderBack;
	}

	// 결제 성공
	@ResponseBody
	@RequestMapping("/successOrder.user")
	public int successOrder(@RequestBody HashMap<String, String> param, HttpSession session) throws Exception {
		System.out.println(param);
		String o_code = param.get("o_code");
		String u_id = param.get("u_id");
		int o_point = Integer.parseInt(param.get("o_point"));
		// 결제 성공하면 o_pay_status true로 바꿈
		userOrderService.successOrder(o_code);

		// 결제 성공하면 장바구니 내역 비움
		userOrderService.resetCart(u_id);

		// 결제 성공하면 포인트 주입
		HashMap<String, Object> insertPoint = new HashMap<String, Object>();
		//시스템에 적립금 설정이 true인지 확인
		String point_use = userOrderService.isPointUse();
		int point_percentage = 0;
		if(point_use.equals("true")) {
			// 시스템에 설정된 point_percentage 불러옴
			point_percentage = Integer.parseInt(userOrderService.getPointPercentage());
		}
		
		int point = Integer.parseInt(param.get("o_total_price")) * point_percentage / 100; 
		System.out.println(point);
		insertPoint.put("u_id", u_id);
		insertPoint.put("pt_amount", point);
		userOrderService.orderPointUpdate(insertPoint);
		userOrderService.orderPointAdd(insertPoint);
		
		//포인트 사용한 경우 차감
		if(o_point!=0) {
			insertPoint.replace("pt_amount", -(o_point));
			userOrderService.orderPointUse(insertPoint);
			userOrderService.orderPointUpdate(insertPoint);
		}

		List<BasketVO> cartList = userOrderService.cartList(u_id);
		// 유저장바구니에 있는 가게 불러옴
		StoreVO cartStore = userOrderService.cartStore(u_id);
		// 장바구니 출력함.
		session.setAttribute("cartStoreSession", cartStore);
		session.setAttribute("cartListSession", cartList);
		return 1;
	}

	// 결제완료 페이지
	@RequestMapping(value = "/orderc.user", method = RequestMethod.GET)
	public String orderComplete(HttpServletRequest request, Model model) {
		// 주문번호 불러옴
		String o_code = request.getParameter("o");
		OrdersVO vo = userOrderService.orderComplete(o_code);
		model.addAttribute("completeOrder", vo);
		return "/order/order_complete";
	}
	
	@RequestMapping(value = "/paytest.user", method = RequestMethod.GET)
	public String payTest(HttpServletRequest request, Model model) {
		// 주문번호 불러옴
		return "/paytest";
	}
	
}
