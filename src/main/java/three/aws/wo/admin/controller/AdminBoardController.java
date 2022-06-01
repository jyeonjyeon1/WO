package three.aws.wo.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.admin.service.AdminService;
import three.aws.wo.admin.service.FaqService;
import three.aws.wo.admin.vo.FAQVO;
import three.aws.wo.admin.vo.NoticeVO;
@Controller
public class AdminBoardController {
	@Autowired
	private AdminService adminService;
	@Resource
	private FaqService noticeService;
	
	@RequestMapping("/notices.admin")
	public String noticeList(NoticeVO vo, Model model) throws Exception {
		List<NoticeVO> noticeList =adminService.noticeList();
		model.addAttribute("noticeList" ,noticeList);
		return "/board/notices";
	}
	
	@RequestMapping("/notices_add.admin")
	public String tonotices_add(Model model) throws Exception {
		System.out.println("notices_add");
		int cnt = adminService.getNextNoticeSeq();
		model.addAttribute("getNextNoticeSeq", cnt);
		return "/board/notices_add";
	}
	
	@RequestMapping("/insertNotice.admin")
	public String insertNotice(NoticeVO vo) throws Exception {
		String n_file_url = vo.getN_file_url();
		if(n_file_url=="" || n_file_url==null) {}
		else {
			String n_seq = String.valueOf(vo.getN_seq());
			String aaa = "https://walkingorder.s3.ap-northeast-2.amazonaws.com/notice/" + n_seq+"___"+n_file_url;
			vo.setN_file_url(aaa);
		}
		adminService.insertNotice(vo);
		
		System.out.println("공지등록");
		return "redirect:/notices.admin";
	}
	
	
	@RequestMapping("/notices_update.admin")
	public String tonotices_update(HttpServletRequest request, Model model) throws Exception {
		int n_seq = Integer.parseInt(request.getParameter("s"));
		System.out.println("tonotices_update");
		NoticeVO oneNotice =adminService.oneNotice(n_seq);
		model.addAttribute("oneNotice" ,oneNotice);
		return "/board/notices_update";
	}
	
	@RequestMapping("/faq_mng.admin")
	public String tofag_Mng(Model model) {
		List<FAQVO> faqList =noticeService.faqList();
		model.addAttribute("faqList" ,faqList);
		System.out.println("faq_mng");
		return "/board/faq_mng";
	}
	
	@ResponseBody
	@RequestMapping("/updateFaq.admin")
	public int updateFaq(@RequestBody HashMap<String,Object> param,Model model) {
		int result = 0;
		System.out.println(param);
		try {
			adminService.updateFaq(param);
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/deleteFaq.admin")
	public int deleteFaq(@RequestBody HashMap<String,Object> param,Model model) {
		int result = 0;
		try {
			adminService.deleteFaq(param);
			result = 1;
		} catch (Exception e) {
		}
		
		return result;
	}
	@RequestMapping("/insertFaq.admin")
	public String insertFaq(FAQVO vo) {
		adminService.insertFaq(vo);
		return "redirect:/faq_mng.admin";
	}
	
	@ResponseBody
	@RequestMapping("/deleteNotice.admin")
	public int deleteNotice(@RequestBody HashMap<String,Object> param) {
		int result = 0;
		try {
			adminService.deleteNotice(param);
			result = 1;
		} catch (Exception e) {
		}
		
		return result;
	}
	
}
