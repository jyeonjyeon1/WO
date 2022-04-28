package three.aws.wo.admin.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.admin.service.AMessageService;
import three.aws.wo.admin.util.MessageSend;
import three.aws.wo.admin.vo.MessageVO;

@Controller
public class AdminMessageController {
	@Resource
	private AMessageService aMessageService;
	
	@RequestMapping("/mess_hist.admin")
	public String messageList(MessageVO vo, Model model) {
		List<MessageVO> messageList =aMessageService.messageList();
		System.out.println(messageList);
		model.addAttribute("messageList" ,messageList);
		return "/message/mess_hist";
	}
	@RequestMapping("/sendSMS.admin")
	public String sendSMS(MessageVO vo) {
		aMessageService.sendSMS(vo);
		MessageSend ms = new MessageSend();
		ms.sendSMS(vo.getSms_toNum(), vo.getSms_text());
		System.out.println("SMS전송 완료 DB확인");
		return "redirect:/mess_send.admin";
	}
}
