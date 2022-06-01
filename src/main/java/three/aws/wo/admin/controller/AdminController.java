package three.aws.wo.admin.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.admin.service.AdminService;
import three.aws.wo.admin.service.FaqService;
import three.aws.wo.admin.vo.NoticeVO;
import three.aws.wo.admin.vo.QnAVO;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	@Resource
	private FaqService noticeService;
	
//	==================== index ============================
	@RequestMapping("/index.admin")
	public String toindex(NoticeVO vo, Model model) throws Exception {
		List<NoticeVO> noticeList =adminService.noticeList();
		List<QnAVO> adminqnaList =noticeService.adminqnaList();
		int dailySales = adminService.dailySales();
		int monthlySales = adminService.monthlySales();
		int dailyReg = adminService.dailyReg();
		int dailyVisit = adminService.dailyVisit();
		Date todayDate = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
		System.out.println(todayDate);
		String formatDate = dateFormat.format(todayDate);
		System.out.println(formatDate);
		
		
		model.addAttribute("adminqnaList" ,adminqnaList);
		model.addAttribute("noticeList" ,noticeList);
		model.addAttribute("dailySales",dailySales);
		model.addAttribute("monthlySales",monthlySales);
		model.addAttribute("formatDate",formatDate);
		model.addAttribute("dailyReg",dailyReg);
		model.addAttribute("dailyVisit",dailyVisit);
		
		return "/index";
	}
	
	@GetMapping("/smarteditor.admin")
	public String naversmartEditor() {
		System.out.println("smarteditor");
		return "/SmartEditor2Skin";
	}

//	==================== board ============================
	@GetMapping("/board_mng.admin")
	public String toboard_Mng() {
		System.out.println("index");
		return "/board/board_mng";
	}
	
//	@GetMapping("/faq_mng.admin")
//	public String tofag_Mng() {
//		System.out.println("faq_mng");
//		return "/board/faq_mng";
//	}
	
	/*
	 * @GetMapping("/inquiry.admin") public String toinquiry() {
	 * System.out.println("inquiry"); return "/board/inquiry"; }
	 */
	
	// @GetMapping("/inquiry_answer.admin")
	// public String toinquiry_answer() {
	// 	System.out.println("inquiry_answer");
	// 	return "/board/inquiry_answer";
	// }
	
	// @GetMapping("/notices_.admin")
	// public String tonotices() {
	// 	System.out.println("notices");
	// 	return "/board/notices";
	// }
	
	// @GetMapping("/notices_add_.admin")
	// public String tonotices_add() {
	// 	System.out.println("notices_add");
	// 	return "/board/notices_add";
	// }
	
	// @GetMapping("/notices_update_.admin")
	// public String tonotices_update() {
	// 	System.out.println("notices_update");
	// 	return "/board/notices_update";
	// }
	
	/*
	 * @GetMapping("/review_mng.admin") public String toreview_mng() {
	 * System.out.println("review_mng"); return "/board/review_mng"; }
	 */
	
//	==================== message ============================
	@GetMapping("/ka_hist.admin")
	public String toka_hist() {
		System.out.println("ka_hist");
		return "/message/ka_hist";
	}
	
	@GetMapping("/ka_tmplt.admin")
	public String toka_tmplt() {
		System.out.println("ka_tmplt");
		return "/message/ka_tmplt";
	}
	
	// @GetMapping("/mess_hist_.admin")
	// public String tomess_hist() {
	// 	System.out.println("mess_hist");
	// 	return "/message/mess_hist";
	// }
	
	@GetMapping("/mess_send.admin")
	public String tomess_send() {
		System.out.println("mess_send");
		return "/message/mess_send";
	}
	
	@GetMapping("/mess_send_group.admin")
	public String tomess_send_group() {
		System.out.println("mess_send_group");
		return "/message/mess_send_group";
	}
	
//	==================== order ============================
//	@GetMapping("/store_order.admin")
//	public String tostore_order() {
//		System.out.println("store_order");
//		return "/order/store_order";
//	} 
	
//	@GetMapping("/total_order.admin")
//	public String tototal_order() {
//		System.out.println("total_order");
//		return "/order/total_order";
//	}
	
//	@GetMapping("/cancel_order.admin")
//	public String tocancel_order() {
//		System.out.println("cancel_order");
//		return "/order/cancel_order";
//	}
	
	@GetMapping("/refund_order.admin")
	public String torefund_order() {
		System.out.println("refund_order");
		return "/order/refund_order";
	}
//	==================== page ============================
//	@GetMapping("/banner_mng.admin")
//	public String tobanner_mng() {
//		System.out.println("banner_mng");
//		return "/page/banner_mng";
//	}
	
//	@GetMapping("/doc_form.admin")
//	public String todoc_form() {
//		System.out.println("doc_form");
//		return "/page/doc_form";
//	}
	
	// @GetMapping("/drink_recom.admin")
	// public String todrink_recom() {
	// 	System.out.println("drink_recom");
	// 	return "/page/drink_recom";
	// }
	
//	@GetMapping("/policy_add.admin")
//	public String topolicy_add() {
//		System.out.println("policy_add");
//		return "/page/policy_add";
//	}
//	
//	@GetMapping("/policy_mng.admin")
//	public String topolicy_mng() {
//		System.out.println("policy_mng");
//		return "/page/policy_mng";
//	}
//	
//	@GetMapping("/policy_update.admin")
//	public String topolicy_update() {
//		System.out.println("policy_update");
//		return "/page/policy_update";
//	}
	
	// @GetMapping("/searchbar_mng.admin")
	// public String tosearchbar_mng() {
	// 	System.out.println("searchbar_mng");
	// 	return "/page/searchbar_mng";
	// }
	
//	@GetMapping("/terms_add.admin")
//	public String toterms_add() {
//		System.out.println("terms_add");
//		return "/page/terms_add";
//	}
//	
//	@GetMapping("/terms_mng.admin")
//	public String toterms_mng() {
//		System.out.println("terms_mng");
//		return "/page/terms_mng";
//	}
//	
//	@GetMapping("/terms_update.admin")
//	public String toterms_update() {
//		System.out.println("terms_update");
//		return "/page/terms_update";
//	}
//	==================== settlement ============================
	@GetMapping("/pg_comm.admin")
	public String topg_comm() {
		System.out.println("pg_comm");
		return "/settlement/pg_comm";
	}
	
	@GetMapping("/pg_stlmt.admin")
	public String topg_stlmt() {
		System.out.println("pg_stlmt");
		return "/settlement/pg_stlmt";
	}
	
	@GetMapping("/stlmt_hist.admin")
	public String tostlmt_hist() {
		System.out.println("stlmt_hist");
		return "/settlement/stlmt_hist";
	}
	
	@GetMapping("/store_rev.admin")
	public String tostore_rev() {
		System.out.println("store_rev");
		return "/settlement/store_rev";
	}
	
	@GetMapping("/store_stlmt.admin")
	public String tostore_stlmt() {
		System.out.println("store_stlmt");
		return "/settlement/store_stlmt";
	}
//	==================== statistics ============================
	@GetMapping("/by_chart.admin")
	public String toby_chart() {
		System.out.println("by_chart");
		return "/statistics/by_chart";
	}
	
	@GetMapping("/by_graph.admin")
	public String toby_graph() {
		System.out.println("by_graph");
		return "/statistics/by_graph";
	}
	
	@GetMapping("/order_period.admin")
	public String toorder_period() {
		System.out.println("order_period");
		return "/statistics/order_period";
	}
	
	@GetMapping("/store_sales.admin")
	public String tostore_sales() {
		System.out.println("store_sales");
		return "/statistics/store_sales";
	}
	
	@GetMapping("/user_sales.admin")
	public String touser_sales() {
		System.out.println("user_sales");
		return "/statistics/user_sales";
	}
//	==================== store ============================
//	@GetMapping("/join_inq.admin")
//	public String tojoin_inq() {
//		System.out.println("join_inq");
//		return "/store/join_inq";
//	}
	
	// @GetMapping("/store_menu_.admin")
	// public String tostore_menu() {
	// 	System.out.println("store_menu");
	// 	return "/store/store_menu";
	// }
	
	@GetMapping("/store_menu_detail.admin")
	public String tostore_menu_detail() {
		System.out.println("store_menu_detail");
		return "/store/store_menu_detail";
	}
	
	// @GetMapping("/store_mng_.admin")
	// public String tostore_mng() {
	// 	System.out.println("store_mng");
	// 	return "/store/store_mng";
	// }
	
	@GetMapping("/store_mng_add.admin")
	public String tostore_mng_add() {
		System.out.println("store_mng_add");
		return "/store/store_mng_add";
	}
	
//	==================== user ============================
	// @GetMapping("/user_mng_.admin")
	// public String touser_mng() {
	// 	System.out.println("user_mng");
	// 	return "/user/user_mng";
	// }
	
	// @GetMapping("/point_mng_.admin")
	// public String topoint_mng() {
	// 	System.out.println("point_mng");
	// 	return "/user/point_mng";
	// }
	
	// @GetMapping("/coupon_mng.admin")
	// public String tocoupon_mng() {
	// 	System.out.println("coupon_mng");
	// 	return "/user/coupon_mng";
	// }
	
	@GetMapping("/coupon_add.admin")
	public String tocoupon_add() {
		System.out.println("coupon_add");
		return "/user/coupon_add";
	}
	
//	@GetMapping("/connect_hist.admin")
//	public String toconnect_hist() {
//		System.out.println("connect_hist");
//		return "/user/connect_hist";
//	}
	
	
//	==================== etc ============================
	
}
