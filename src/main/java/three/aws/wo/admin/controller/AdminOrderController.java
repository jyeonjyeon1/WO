package three.aws.wo.admin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.admin.service.AOrderService;
import three.aws.wo.admin.vo.PointVO;
import three.aws.wo.user.vo.OrdersVO;

@Controller
public class AdminOrderController {
	@Resource
	private AOrderService aOrderService;
	
	@RequestMapping("/total_order.admin")
	public String orderList(OrdersVO vo, Model model, HttpServletRequest request) {
		String si_code = request.getParameter("si_code");
		List<OrdersVO> orderList = new ArrayList<OrdersVO>();
		if(si_code != null) {
			orderList =aOrderService.orderList(si_code);
		}else {
			orderList =aOrderService.orderList();
		}
		System.out.println(orderList);
		model.addAttribute("orderList" ,orderList);
		return "/order/total_order";
	}
	
	@RequestMapping("/store_order.admin")
	public String tostore_order(OrdersVO vo, Model model, HttpServletRequest request) {
		String si_code = request.getParameter("si_code");
		List<OrdersVO> orderList =aOrderService.orderList(si_code);
		System.out.println("store_order");
		System.out.println(orderList);
		model.addAttribute("orderList" ,orderList);
		return "/order/store_order";
	}
	
	
}
