package three.aws.wo.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.admin.service.AMessageService;
import three.aws.wo.admin.util.MessageSend;
import three.aws.wo.admin.vo.MessageVO;
import three.aws.wo.user.vo.UserSMSListVO;

@Controller
public class AdminMessageController {
	@Resource
	private AMessageService aMessageService;

	@RequestMapping("/mess_hist.admin")
	public String messageList(MessageVO vo, Model model) {
		List<MessageVO> messageList = aMessageService.messageList();
		// System.out.println(messageList);
		model.addAttribute("messageList", messageList);
		return "/message/mess_hist";
	}

	@GetMapping("/searchMessageList.admin")
	public String searchMessageList(MessageVO vo, Model model) {
		List<MessageVO> messageList = aMessageService.searchMessageList();
		System.out.println(messageList);
		model.addAttribute("messageList", messageList);
		return "/message/mess_hist";
	}

	@RequestMapping("/sendSMS.admin")
	public String sendSMS(MessageVO vo) {
		MessageSend ms = new MessageSend();
		String sms_text = vo.getSms_text();
		if (vo.isSms_ad() == true) {// 광고성일 경우
			sms_text = "(광고)" + sms_text;
		}
		int result = ms.sendSMS(vo.getSms_toNum(), sms_text, vo.getSms_type());
		if (result == 1) {
			vo.setSms_result(true);
			System.out.println("SMS전송 완료 DB확인");
			System.out.println(vo.getSms_toNum() + ": " + vo.getSms_text());
		} else {
			vo.setSms_result(false);
			System.out.println("SMS전송 실패 DB확인");
		}
		aMessageService.sendSMS(vo);
		return "redirect:/mess_send.admin";
	}

	@RequestMapping("/groupSMS.admin")
	public String groupSMS(MessageVO vo) {
		List<UserSMSListVO> sms_usableList = aMessageService.sms_usableList();
		String[] telList = sms_usableList.toString().split("u_tel=");

		String sms_text = vo.getSms_text();
		if (vo.isSms_ad() == true) {// 광고성일 경우
			sms_text = "(광고)" + sms_text;
		}

		for (int i = 1; i < telList.length; i++) {
			telList[i] = telList[i].split("\\)")[0];
			MessageSend ms = new MessageSend();
			int result = ms.sendSMS(telList[i], sms_text, vo.getSms_type());
			vo.setSms_toNum(telList[i]);
			if (result == 1) {
				vo.setSms_result(true);
				System.out.println("그룹 SMS전송 완료 DB확인");
				System.out.println(vo.getSms_toNum() + ": " + vo.getSms_text());
			} else {
				vo.setSms_result(false);
				System.out.println("그룹 SMS전송 실패 DB확인");
			}
			aMessageService.sendSMS(vo);
		}
		return "redirect:/mess_send_group.admin";
	}

	@ResponseBody
	@RequestMapping(value = "/phoneVeriff.admin", method = RequestMethod.POST)
	public int phoneVerif(@RequestBody HashMap<String, String> param) {
		System.out.println("zzzz");
		// 연락완료 여부 변경
//		// 연락처에 등록 form 보냄
		String u_tel = param.get("u_tel");
		MessageSend ms = new MessageSend();
		String sms_text = "[워킹오더 인증번호]\n\n"+param.get("verifNumMade");
		int result = ms.sendSMS(u_tel,sms_text, "SMS");

		return result;
	}

}
