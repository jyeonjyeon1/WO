package three.aws.wo.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.admin.service.AMessageService;
import three.aws.wo.admin.service.AStoreService;
import three.aws.wo.admin.util.MessageSend;
import three.aws.wo.admin.vo.MessageVO;
import three.aws.wo.store.vo.FranchiseVO;
import three.aws.wo.store.vo.StoreVO;

@Controller
public class AdminStoreController {
	@Resource
	private AStoreService aStoreService;
	@Autowired
	private AMessageService aMessageService;

	@RequestMapping("/store_mng.admin")
	public String storeList(StoreVO vo, Model model) {
		List<StoreVO> storeList =aStoreService.storeList();
		System.out.println("store_mng");
		model.addAttribute("storeList" ,storeList);
		return "/store/store_mng";
	}
	
	@RequestMapping("/regisStore.admin")
	public String insertStore(StoreVO vo) {
		aStoreService.insertStoreInfo(vo);
		aStoreService.insertStoreAccount(vo);
		System.out.println("가게 등록 완료 DB확인");
		return "redirect:/store_mng.admin";
	}
	
	@RequestMapping("/store_menu.admin")
	public String menuStoreList(StoreVO vo, Model model) {
		List<StoreVO> storeList =aStoreService.storeList();
		System.out.println("store_menu");
		model.addAttribute("storeList" ,storeList);
		return "/store/store_menu";
	}
	
	@RequestMapping("/join_inq.admin")
	public String tojoin_inq(FranchiseVO vo, Model model) {
		List<FranchiseVO> storeInquiryList = aStoreService.storeInquiryList();
		System.out.println("join_inq");
		model.addAttribute("storeInquiryList", storeInquiryList);
		return "/store/join_inq";
	}
	
	@RequestMapping("/storeInquiry.user")
	public String insertStoreInquiry(FranchiseVO vo) {
		aStoreService.insertStoreInquiry(vo);
		System.out.println("입점문의등록 DB확인");
		return "redirect:/index.user";
	}
	
	@GetMapping("/storeInquiry.user")
	public String tostoreInquiryPage() {
		System.out.println("storeInquiry");
		return "/info/info_storeInquiry";
	}
	
	@ResponseBody
	@RequestMapping(value="/storeInqAccept.admin", method=RequestMethod.POST)
	public int storeInqAccept(@RequestBody HashMap<String,String> param) {
		//연락완료 여부 변경
		int f_seq = Integer.parseInt(param.get("f_seq"));
		//연락처에 등록 form 보냄
		String f_tel = param.get("f_tel");
		//이부분은 문자가 가니까 일단 막았음
		MessageSend ms = new MessageSend();
//		String sms_title = "[워킹오더] 가게등록 안내";
//		String sms_text = "http://localhost:8080/join_inq.admin\n영업일 기준 1~3일 내로 연락드립니다.";
//		int result = ms.sendLMS(f_tel,sms_title, sms_text);
		aStoreService.storeInqAccept(f_seq);
		return 1;
	}
	
	@GetMapping("/register.store")
	public String storeReg() {
		System.out.println("storeRegForm");
		return "/storeRegForm";
	}
	
}
