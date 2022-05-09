package three.aws.wo.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.admin.service.FaqService;
import three.aws.wo.admin.vo.FAQVO;
import three.aws.wo.admin.vo.NoticeVO;

@Controller
public class AdminNoticeController {
	@Resource
	private FaqService noticeService;
	
	@RequestMapping("/faq.user")
	public String noticeList(NoticeVO vo, Model model) {

//		자주 묻는 질문 ////////////////////////////////////////

		List<FAQVO> toptenList =noticeService.toptenList();
		List<FAQVO> orderfaqList =noticeService.orderfaqList();
		List<FAQVO> cancelfaqList =noticeService.cancelfaqList();
		List<FAQVO> userfaqList =noticeService.userfaqList();
		List<FAQVO> pointfaqList =noticeService.pointfaqList();
		List<FAQVO> etcfaqList =noticeService.etcfaqList();

//		워킹오더 소식 ////////////////////////////////////////

		List<NoticeVO> newsList =noticeService.newsList();
		List<NoticeVO> noticeList =noticeService.noticeList();
		List<NoticeVO> eventList =noticeService.eventList();
		
		
		//System.out.println(noticeList);
//		자주 묻는 질문 ////////////////////////////////////////

		model.addAttribute("toptenList" ,toptenList);
		model.addAttribute("orderfaqList" ,orderfaqList);
		model.addAttribute("cancelList" ,cancelfaqList);
		model.addAttribute("userfaqList" ,userfaqList);
		model.addAttribute("pointfaqList" ,pointfaqList);
		model.addAttribute("etcfaqList" ,etcfaqList);
		
//		워킹오더 소식 ////////////////////////////////////////

		model.addAttribute("newsList" ,newsList);
		model.addAttribute("noticeList" ,noticeList);
		model.addAttribute("eventList" ,eventList);
		
		return "/customer/customer_faq";
	}
	
	@ResponseBody
	@RequestMapping("/updateVisits.user")
	public int updateVisits(@RequestBody HashMap<String, Integer> param) throws Exception {
		System.out.println(param);
		noticeService.updateVisits(param);
		return 0;
	}
	
}

//@GetMapping("/faq.user")
//public String tofaqPage() {
//	System.out.println("faq");
//	return "/customer/customer_faq";
//}