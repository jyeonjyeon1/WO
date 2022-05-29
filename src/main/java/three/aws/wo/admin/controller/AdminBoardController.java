package three.aws.wo.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.admin.service.AdminService;
import three.aws.wo.admin.vo.NoticeVO;
@Controller
public class AdminBoardController {
	@Autowired
	private AdminService adminService;
	
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
}
