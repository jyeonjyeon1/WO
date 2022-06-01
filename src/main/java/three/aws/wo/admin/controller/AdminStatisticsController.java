package three.aws.wo.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.store.service.SOrderService;
import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.OrdersVO;

@Controller
public class AdminStatisticsController {
	
	@Inject
	private SOrderService sOrderService;
	
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
	
}
