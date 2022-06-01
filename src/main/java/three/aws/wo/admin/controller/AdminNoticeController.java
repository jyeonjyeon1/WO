package three.aws.wo.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.admin.service.FaqService;
import three.aws.wo.admin.util.MessageSend;
import three.aws.wo.admin.vo.FAQVO;
import three.aws.wo.admin.vo.NoticeVO;
import three.aws.wo.admin.vo.QnAVO;
import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.vo.UserVO;

@Controller
public class AdminNoticeController {
	@Resource
	private FaqService noticeService;
	
	@RequestMapping("/faq.user")
	public String noticeList(HttpSession session, NoticeVO vo, Model model) {

		String u_id = "";
		UserVO uv = (UserVO) session.getAttribute("userSession");
		if(uv == null) {
			u_id = "No_Data";
		}
		else if (uv != null) {
			u_id = uv.getU_id();
		}
		List<FAQVO> toptenList =noticeService.toptenList();
		List<FAQVO> faqList =noticeService.faqList();
		List<NoticeVO> newsList =noticeService.newsList();
		
//		1:1 

		List<QnAVO> myqnaList =noticeService.myqnaList(u_id);
		model.addAttribute("toptenList" ,toptenList);
		model.addAttribute("faqList" ,faqList);
		model.addAttribute("newsList" ,newsList);
		
//		1:1

		model.addAttribute("myqnaList" ,myqnaList);
		
		return "/customer/customer_faq";
	}
	
	@RequestMapping("/event.user")
	public String noticeEvent( NoticeVO vo, Model model,  HttpServletRequest request) {
		
		int eventNum = Integer.parseInt(request.getParameter("eventNum"));
		NoticeVO eventCHK = noticeService.eventCHK(eventNum);
		
		model.addAttribute("eventCHK" ,eventCHK);
		
		return "/customer/customer_event";
	}
	
	@ResponseBody
	@RequestMapping("/updateVisits.user")
	public int updateVisits(@RequestBody HashMap<String, Integer> param) throws Exception {
		System.out.println(param);
		noticeService.updateVisits(param);
		return 0;
	}
	
	@RequestMapping("/addqna.user")
	public String addqna(QnAVO vo) throws Exception {
		noticeService.addqna(vo);
		return "redirect:/faq.user";
	}
	
	
	
	
	@RequestMapping("/inquiry.admin")
	public String adminqnaList(QnAVO vo, Model model) {		
		List<QnAVO> adminqnaList =noticeService.adminqnaList();
		model.addAttribute("adminqnaList" ,adminqnaList);
		
		return "/board/inquiry";
	}
	
	@RequestMapping("/inquiry_answer.admin")
	public String adminanswerList(QnAVO vo, Model model, HttpServletRequest request) {		
		
		int qa_seq = Integer.parseInt(request.getParameter("qa_seq"));
		
		List<QnAVO> adminanswerList =noticeService.adminanswerList(qa_seq);
		
		model.addAttribute("adminanswerList", adminanswerList);
		return "/board/inquiry_answer";
	}
	
	
	@RequestMapping("/addanswer.admin")
	public String addanswer(QnAVO vo) throws Exception {
		noticeService.addanswer(vo);
		MessageSend ms = new MessageSend();
		String u_tel = vo.getU_tel();
		String qa_title = vo.getQa_title();
		if(qa_title.length() > 15) {
			qa_title = qa_title.substring(0,15) + "...";
		}
		String sms_text = "[" + qa_title + "] 占쏙옙 占쏙옙占쏙옙 占썰변占쏙옙 占쏙옙溝퓸占쏙옙占쏙옙求占�.";
		System.out.println(u_tel);
		int result = ms.sendSMS(u_tel, sms_text, "SMS");

		return "redirect:/inquiry.admin";
	}
	
	
}

//@GetMapping("/faq.user")
//public String tofaqPage() {
//	System.out.println("faq");
//	return "/customer/customer_faq";
//}