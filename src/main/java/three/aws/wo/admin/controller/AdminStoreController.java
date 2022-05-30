package three.aws.wo.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
import three.aws.wo.store.vo.FranchiseVO;
import three.aws.wo.store.vo.StoreFormVO;
import three.aws.wo.store.vo.StoreMenuVO;
import three.aws.wo.store.vo.StoreVO;

@Controller
public class AdminStoreController {
	@Resource
	private AStoreService aStoreService;
	@Autowired
	private AMessageService aMessageService;
	@Inject
	BCryptPasswordEncoder pwdEncoder;

	@RequestMapping("/store_mng.admin")
	public String storeList(StoreVO vo, Model model) {
		List<StoreVO> storeList = aStoreService.storeList();
		System.out.println("store_mng");
		model.addAttribute("storeList", storeList);
		return "/store/store_mng";
	}

	@RequestMapping("/regisStore.admin")
	public String insertStore(StoreVO vo) {
		aStoreService.insertStoreInfo(vo);
		String bankUrl = "https://walkingorder.s3.ap-northeast-2.amazonaws.com/bankcopy/";
		String bussUrl = "https://walkingorder.s3.ap-northeast-2.amazonaws.com/businessreg/";
		String si_code = vo.getSi_code();
		String sa_bank = vo.getSa_bankbook_image();
		String sa_buss = vo.getSa_business_registration_image();
		vo.setSa_bankbook_image(bankUrl + si_code + sa_bank);
		vo.setSa_business_registration_image(bussUrl + si_code + sa_buss);
		vo.setSa_password(pwdEncoder.encode(vo.getSi_code()));
		aStoreService.insertStoreAccount(vo);
		System.out.println("가게 등록 완료 DB확인");
		return "redirect:/store_mng.admin";
	}

	@RequestMapping("/updateStore.admin")
	public String updateStore(StoreVO vo) {
		System.out.println(vo);
		String si_code = vo.getSi_code();
		if (vo.getSa_password() == null || (vo.getSa_password()).equals("")) {
			String pwd = aStoreService.getOriginalPass(vo);
			vo.setSa_password(pwd);
		} else {
			vo.setSa_password(pwdEncoder.encode(vo.getSi_code()));
		}

		if (vo.getSa_business_registration_image() == null || (vo.getSa_business_registration_image()).equals("")) {
			String busReg = aStoreService.getOriginalBussReg(vo);
			vo.setSa_business_registration_image(busReg);
		} else {
			String bussUrl = "https://walkingorder.s3.ap-northeast-2.amazonaws.com/businessreg/";
			String sa_buss = vo.getSa_business_registration_image();
			vo.setSa_business_registration_image(bussUrl + si_code + sa_buss);
		}

		if (vo.getSa_bankbook_image() == null || (vo.getSa_bankbook_image()).equals("")) {
			String bankbook = aStoreService.getOriginalBankbook(vo);
			vo.setSa_bankbook_image(bankbook);
		} else {
			String bankUrl = "https://walkingorder.s3.ap-northeast-2.amazonaws.com/bankcopy/";
			String sa_bank = vo.getSa_bankbook_image();
			vo.setSa_bankbook_image(bankUrl + si_code + sa_bank);
		}

		aStoreService.updateStoreAccount(vo);

		System.out.println("가게 수정 완료 DB확인");
		return "redirect:/store_mng.admin";
	}

	@RequestMapping("/store_menu.admin")
	public String menuStoreList(StoreVO vo, Model model) {
		List<StoreVO> storeList = aStoreService.storeList();
		System.out.println("store_menu");
		model.addAttribute("storeList", storeList);
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

	// 입점문의 1단계
	@GetMapping("/storeInquiry.user")
	public String tostoreInquiryPage() {
		System.out.println("storeInquiry");
		return "/info/info_storeInquiry";
	}

	// 입점문의에서 form 문자 및 체크
	@ResponseBody
	@RequestMapping(value = "/storeInqAccept.admin", method = RequestMethod.POST)
	public int storeInqAccept(@RequestBody HashMap<String, String> param) {
		// 연락완료 여부 변경
		int f_seq = Integer.parseInt(param.get("f_seq"));
		// 연락처에 등록 form 보냄
		String f_tel = param.get("f_tel");
		// 이부분은 문자가 가니까 일단 막았음
		MessageSend ms = new MessageSend();
//		String sms_title = "[워킹오더] 가게등록 안내";
//		String sms_text = "http://localhost:8080/join_inq.admin\n영업일 기준 1~3일 내로 연락드립니다.";
//		int result = ms.sendLMS(f_tel,sms_title, sms_text);
		aStoreService.storeInqAccept(f_seq);
		return 1;
	}

	// 입점문의 2단계
	@GetMapping("/register.store")
	public String storeReg() {
		System.out.println("storeRegForm");
		return "/reg/storeRegForm";
	}

	// 입점문의 2단계 완료폼
	@GetMapping("/registed.store")
	public String storeRegComp() {
		System.out.println("storeRegComp");
		return "/reg/storeRegComp";
	}

	// register.store 등록 매핑
	@RequestMapping("/regisStoreForm.admin")
	public String regisStoreForm(StoreFormVO vo) {
		String bankUrl = "https://walkingorder.s3.ap-northeast-2.amazonaws.com/bankcopy/";
		String bussUrl = "https://walkingorder.s3.ap-northeast-2.amazonaws.com/businessreg/";
		String imageUrl = "https://walkingorder.s3.ap-northeast-2.amazonaws.com/store_image/";
		String sf_code = vo.getSf_code();
		String sf_bank = vo.getSf_bankbook_image();
		String sf_buss = vo.getSf_business_registration_image();
		String image = vo.getSf_image();
		vo.setSf_bankbook_image(bankUrl + sf_code + sf_bank);
		vo.setSf_business_registration_image(bussUrl + sf_code + sf_buss);
		vo.setSf_image(imageUrl + sf_code + image);
		vo.setSf_password(pwdEncoder.encode(vo.getSf_code()));
		aStoreService.insertStoreForm(vo);
		System.out.println("승인목록 확인+ DB확인");
		return "redirect:/registed.store";
	}

	@GetMapping("/store_pending.admin")
	public String storePendingList(StoreFormVO vo, Model model) {
		System.out.println("store_pending");
		List<StoreFormVO> storePendingList = aStoreService.storePendingList();
		model.addAttribute("storePendingList", storePendingList);
		return "/store/store_pending";
	}

	// 입점 승인 대기 모달 클릭으로...
	@ResponseBody
	@RequestMapping(value = "/storependingAlert.admin", method = RequestMethod.POST)
	public int storependingAlert(@RequestBody HashMap<String, String> param) {
		String sf_status = param.get("status");
		String sf_code = param.get("sf_code");
		HashMap<String, String> change = new HashMap<String, String>();
		change.put("sf_status", sf_status);
		change.put("sf_code", sf_code);
		// 승인일 경우 계정 만들어줌 (id,pw = 사업자번호)
		if (sf_status.equals("승인")) {
			aStoreService.updateStore(change);
		} else if (sf_status.equals("서류보안")) {
			String message = param.get("message");
			aStoreService.updateStore(change);
			String tel = param.get("tel");
			// 이부분은 문자가 가니까 일단 막았음
			MessageSend ms = new MessageSend();
//				String sms_title = "[워킹오더] 서류보안 요청";
//				String sms_text = "요청내용:"+message+"\nhttp://localhost:8080/join_inq.admin";
//				int result = ms.sendLMS(tel,sms_title, sms_text);
			System.out.println(param);
		} else if (sf_status.equals("검토")) {
			aStoreService.updateStore(change);
		} else if (sf_status.equals("입점완료")) {
			aStoreService.updateStore(change);
		}

		// 이부분은 문자가 가니까 일단 막았음
		MessageSend ms = new MessageSend();
//			String sms_title = "[워킹오더] 가게등록 안내";
//			String sms_text = "http://localhost:8080/join_inq.admin\n영업일 기준 1~3일 내로 연락드립니다.";
//			int result = ms.sendLMS(f_tel,sms_title, sms_text);
		return 1;
	}

	// 매장생성 전, 동일 사업자로 등록된 계정이 있는지 확인
	@ResponseBody
	@RequestMapping(value = "/checkStore.admin", method = RequestMethod.POST)
	public int checkStore(@RequestBody HashMap<String, String> param) {
		String sf_code = param.get("sf_code");
		String tel = param.get("tel");
		int result = aStoreService.checkStore(sf_code);
		// 일치하는 매장코드가 없을 경우에는 매장 생성을 해줌
		if (result == 0) {
			// store_form 테이블에서 sf_code= #{sf_code}인 정보를 info랑 account에 만듬.
			aStoreService.replicateStoreInfo(sf_code);
			aStoreService.replicateStoreAccount(sf_code);
			System.out.println(param);
			// 이부분은 문자가 가니까 일단 막았음
			// 계정 생성 후 문자로 로그인 정보 알림
//			MessageSend ms = new MessageSend();
//			String sms_title = "[워킹오더] 가게 등록 완료";
//			String sms_text = "http://localhost:8080/login.store\n아이디: " + sf_code + "\n비밀번호: " + sf_code;
//			int esult = ms.sendLMS(tel, sms_title, sms_text);
		}
		return result;
	}

	@GetMapping("/store_mng_update.admin")
	public String tostore_mng_update(HttpServletRequest request, Model model) {
		String si_code = request.getParameter("si_code");
		System.out.println("store_mng");
		if (si_code == null) {
			return "/store/store_mng_update";
		} else {
			StoreVO vo = aStoreService.storeOne(si_code);
			System.out.println(vo);
			model.addAttribute("storeOne", vo);
			return "/store/store_mng_update";
		}
	}

/////////////------- DB에서 지우는 작업들---------///////////////////////////////////
	@ResponseBody
	@RequestMapping(value = "/deleteJoinInq.admin", method = RequestMethod.POST)
	public int deleteJoinInq(@RequestBody HashMap<String, String> param) {
		// 입점문의 DB에서 삭제
		int f_seq = Integer.parseInt(param.get("f_seq"));
		aStoreService.deleteJoinInq(f_seq);
		return 1;
	}

	@ResponseBody
	@RequestMapping(value = "/deletePending.admin", method = RequestMethod.POST)
	public int deletePending(@RequestBody HashMap<String, String> param) {
		// 입점문의 DB에서 삭제
		int sf_seq = Integer.parseInt(param.get("sf_seq"));
		aStoreService.deletePending(sf_seq);
		return 1;
	}

	// store menu image seung in
	@RequestMapping("pending_menuimg.admin")
	public String menuPending(Model model) {
		System.out.println("pending_menuimg");
		List<StoreMenuVO> pendingMenuImg = aStoreService.pendingMenuImg();
		System.out.println(pendingMenuImg);
		model.addAttribute("pendingMenuImg", pendingMenuImg);
		return "/store/store_menu_img";
	}

	@ResponseBody
	@RequestMapping(value = "/confirmMenuImg.admin", method = RequestMethod.POST)
	public int confirmMenuImg(@RequestBody HashMap<String, String> param) {
		int result = 0;
		System.out.println(param);
		try {
			aStoreService.confirmMenuImg(param);
			MessageSend ms = new MessageSend();
			String sms_text = "[워킹오더]\n신청하신 메뉴("+param.get("m_name")+") 이미지가 승인되었습니다";
//			int aa = ms.sendSMS(param.get("si_tel"),sms_text, "SMS");
			int aa = ms.sendSMS("01091722555",sms_text, "SMS");
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@ResponseBody
	@RequestMapping(value = "/rejectMenuImg.admin", method = RequestMethod.POST)
	public int rejectMenuImg(@RequestBody HashMap<String, String> param) {
		int result = 0;
		System.out.println(param);
		try {
			aStoreService.rejectMenuImg(param);
			
			MessageSend ms = new MessageSend();
			String sms_text = "[워킹오더]\n신청하신 메뉴("+param.get("m_name")+") 이미지는 승인 거절되었습니다";
//			int aa = ms.sendSMS(param.get("si_tel"),sms_text, "SMS");
			int aa = ms.sendSMS("01091722555",sms_text, "SMS");
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/updateStoreImage.admin", method = RequestMethod.POST)
	public int updateStoreImage(@RequestBody HashMap<String, String> param) {
		int result = 0;
		try {
			aStoreService.updateStoreImage(param);
			result = 1;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return result;
	}

}
