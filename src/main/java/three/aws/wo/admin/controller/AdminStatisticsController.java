package three.aws.wo.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.admin.service.AOrderService;
import three.aws.wo.admin.service.AdminService;
import three.aws.wo.store.service.SOrderService;
import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.OrdersVO;
import three.aws.wo.user.vo.UserVO;

@Controller
public class AdminStatisticsController {
	
	@Inject
	private SOrderService sOrderService;
	@Resource
	private AOrderService aOrderService;
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/datePeriodAdmin.admin")
	public String dateOPeriod(HttpServletRequest request, HttpSession session, Model model) {
		
		String si_code = request.getParameter("si_code");
		String dateOneday = request.getParameter("dateOneday");
		String dateOneday2 = request.getParameter("dateOneday2");
		System.out.println(si_code);
		System.out.println(dateOneday);
		System.out.println(dateOneday2);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("si_code", si_code);
		map.put("inputStrDate", dateOneday);
		map.put("inputEndDate", dateOneday2);
		List<OrdersVO> dateOPeriod = sOrderService.dateOPeriod(map);
		model.addAttribute("dateOPeriod", dateOPeriod);
		List<BasketVO> dateOPeriodDt =sOrderService.dateOPeriodDt(map);
		model.addAttribute("dateOPeriodDt", dateOPeriodDt);
		return "/statistics/store_salesByDate";
	}
	@GetMapping("/by_chart.admin")
	public String toby_chart(Model model) {
		System.out.println("by_chart");
		List<UserVO> visHisCount = adminService.visHisCount();
		List<OrdersVO> dailySales = aOrderService.dailySales();
		model.addAttribute("dailySales", dailySales);
		model.addAttribute("visHisCount",visHisCount);
		
		return "/statistics/by_chart";
	}
	
	@GetMapping("/by_graph.admin")
	public String toby_graph(Model model) {
		System.out.println("by_graph");
		List<UserVO> visHisCount = adminService.visHisCount();
		List<OrdersVO> dailySales = aOrderService.dailySales();
		model.addAttribute("dailySales", dailySales);
		model.addAttribute("visHisCount",visHisCount);
		return "/statistics/by_graph";
	}
}
