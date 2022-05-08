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

import three.aws.wo.user.service.UserOrderService;
import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.UserVO;

@Controller
public class UserOrderController {
	@Autowired
	private UserOrderService userOrderService;
	
//	@GetMapping("/cart.user")
//	public String tocartPage() {
//		System.out.println("cart");
//		return "/order/order_cart";
//	}
	
	@RequestMapping("/cart.user")
	public String cartList(HttpSession session,	HttpServletRequest request, HttpServletResponse response, Model model) {
		//세션에 있는 유저를 가져옴
		UserVO vo = (UserVO)session.getAttribute("userSession");
		// 유저 아이디 받아옴
		String u_id = vo.getU_id();
		// 유저 아이디로 장바구니 조회 함.
		List<BasketVO> cartList = userOrderService.cartList(u_id);
		//장바구니 출력함.
		model.addAttribute("cartList", cartList);
		return "/order/order_cart";
	}
	
	@RequestMapping(value="/orderc.user",method=RequestMethod.POST)
	public String orderComplete(){
		return "/order/order_complete";
	}
	
	@RequestMapping(value="/orderc.user",method=RequestMethod.GET)
	public String orderc(){
		return "/order/order_complete";
	}
}
