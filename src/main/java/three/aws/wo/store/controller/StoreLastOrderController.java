package three.aws.wo.store.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.store.service.SOrderService;
import three.aws.wo.store.vo.IndexVO;
import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.OrdersVO;
@Controller
public class StoreLastOrderController {
	
	@Inject
	private SOrderService sOrderService;
	
	
	@RequestMapping("/Ooneday.store")
	public String toOOnedayPage(HttpSession session, Model model) {
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = "";
		if(svo != null) {
			si_code = svo.getSi_code();
		} else {
			si_code ="2222111212";
		}

		
		List<OrdersVO> orderList = sOrderService.orderList(si_code);
		model.addAttribute("orderList", orderList);
		List<BasketVO> orderDetailList =sOrderService.orderDetailList(si_code);
		model.addAttribute("orderDetailList", orderDetailList);
		
		
		
		return "/order/lastOrder_oneday";
	}
	
	
	
	
	@RequestMapping("/dateOoneday.store")
	public String dateOoneday(HttpServletRequest request, HttpSession session, Model model) {
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = "";
		if (svo != null) {
			si_code = svo.getSi_code();
		} else {
			si_code = "2222111212";
		}
		
		String picked_date1 = request.getParameter("picked_date1");
		System.out.println(picked_date1);
		
		
			
		
		LocalDate inputDate = LocalDate.parse(picked_date1, DateTimeFormatter.ISO_DATE);
		
		System.out.println(inputDate);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("si_code", si_code);
		map.put("inputDate", picked_date1);
		
		List<OrdersVO> dateOoneday = sOrderService.dateOoneday(map);
		model.addAttribute("orderList", dateOoneday);
		List<BasketVO> dateOonedayDt = sOrderService.dateOonedayDt(map);
		model.addAttribute("orderDetailList", dateOonedayDt);
		

		return "/order/orderByDate";
	}
	
	
	@RequestMapping("/dateOPeriod.store")
	public String dateOPeriod(HttpServletRequest request, HttpSession session, Model model) {
		
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = "";
		if (svo != null) {
			si_code = svo.getSi_code();
		} else {
			si_code = "2222111212";
		}
		String dateOneday = request.getParameter("dateOneday");
		String dateOneday2 = request.getParameter("dateOneday2");
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
		return "/order/orderByDate_period";
	}
	
	
	@RequestMapping("/Operiod.store")
	public String OperiodPage(HttpSession session, Model model) {
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = "";
		if(svo != null) {
			si_code = svo.getSi_code();
		} else {
			si_code ="2222111212";
		}
		
		List<OrdersVO> orderList = sOrderService.orderList(si_code);
		model.addAttribute("orderList", orderList);
		List<BasketVO> orderDetailList =sOrderService.orderDetailList(si_code);
		model.addAttribute("orderDetailList", orderDetailList);
		
		return "/order/lastOrder_period";
	}
	
	
//	@GetMapping("/SPeriod.store")
//	public String toSOnedayPage() {
//		System.out.println("store statistics_period");
//		return "/statistics/statistics_period";
//	}
	@RequestMapping("/SOneday.store")
	public String SOnedayPage(HttpSession session, Model model) {
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = "";
		if(svo != null) {
			si_code = svo.getSi_code();
		} else {
			si_code ="2222111212";
		}
		
		List<OrdersVO> orderList = sOrderService.orderList(si_code);
		model.addAttribute("orderList", orderList);
		List<BasketVO> orderDetailList =sOrderService.orderDetailList(si_code);
		model.addAttribute("orderDetailList", orderDetailList);
		
		return "/statistics/statistics_oneday";
	}
	
	
	
	
}