package three.aws.wo.store.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.store.service.SIndexService;
import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.OrdersVO;

@Controller
public class StoreIndexController {
	@Inject
	private SIndexService sIndexService;
	
	public int index=1;

	@RequestMapping("/index.store")
	public String toindexPage(HttpSession session, Model model) {
		System.out.println("store index");
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = "";
		if (svo != null) {
			si_code = svo.getSi_code();
		} else {
			si_code = "2222111212";
		}
		List<OrdersVO> storeOrders = sIndexService.storeOrders(si_code);
		model.addAttribute("storeOrders", storeOrders);
		List<BasketVO> orderDetails =sIndexService.orderDetails(si_code);
		model.addAttribute("orderDetails", orderDetails);
		
		return "/index";
	}

	@ResponseBody
	@RequestMapping("/changeDueTime.store")
	public int changeDueTime(@RequestBody HashMap<String, Object> param, HttpSession session) {
		int result = 0;
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = "";
		if (svo != null) {
			si_code = svo.getSi_code();
		} else {
			si_code = "2222111212";
		}
		System.out.println("changeDueTime");
		int si_due_time = (Integer)param.get("si_due_time");

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("si_code", si_code);
		map.put("si_due_time", si_due_time);
		try {
			sIndexService.changeDueTime(map);
			svo.setSi_due_time(si_due_time);
			result = 1;
		} catch (Exception e) {
			System.err.println("changeDueTime FAIL");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/changeOState.store")
	public int changeOState(@RequestBody HashMap<String, String> param, HttpSession session) {
		int result = 0;
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = "";
		if (svo != null) {
			si_code = svo.getSi_code();
		} else {
			si_code = "2222111212";
		}
		System.out.println("changeOState");
		System.out.println(param);
		try {
			sIndexService.changeOState(param);
			result = 1;
			
			//if order is completely complete(?) then delete basket_order
//			if((param.get("o_order_state")).equals("byedrink")) {
//				sIndexService.deleteBasketOrder(param);
//			}
		} catch (Exception e) {
			System.err.println("changeOState FAIL");
		}
		return result;
	}
	
	@RequestMapping("/checkNewOrder.store")
	public String checkNewOrder(Model model,HttpSession session) {
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = "";
		if (svo != null) {
			si_code = svo.getSi_code();
		} else {
			si_code = "2222111212";
		}
		
		//check db for new order comparing nowdate
		OrdersVO orderVO = sIndexService.newOrder(si_code);
		if(orderVO != null) {
			List<BasketVO> orderDetails =sIndexService.orderDetails(si_code);
			model.addAttribute("orderNewDetail", orderDetails);
			
			model.addAttribute("newOrder",orderVO);
			model.addAttribute("inputIndex",index);
			index++;
			return "/inc/neworder";
		}else {
//			System.out.println("NO new order");
			return "/inc/blank";
		}
	}
	
	@ResponseBody
	@RequestMapping("/OrderCancel.store")
	public int OrderCancel(@RequestBody HashMap<String, String> param, HttpSession session) {
		int result = 0;
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = "";
		if (svo != null) {
			si_code = svo.getSi_code();
		} else {
			si_code = "2222111212";
		}
		String o_code = param.get("o_code");
		System.out.println("OrderCancel");
		System.out.println(o_code);
		System.out.println(si_code);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("si_code", si_code);
		map.put("o_code", o_code);
		sIndexService.OrderCancel(map);
		try {
			
		sIndexService.OrderCancel(map);
		result = 1;
		
		} catch (Exception e) {
			System.err.println("OrderCancel FAIL");
		}
		
		return result;
	}
	
	
}
