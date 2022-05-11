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
import three.aws.wo.store.vo.FranchiseVO;
import three.aws.wo.store.vo.StoreFormVO;
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
		String bankUrl = "https://walkingorder.s3.ap-northeast-2.amazonaws.com/bankcopy/";
		String bussUrl = "https://walkingorder.s3.ap-northeast-2.amazonaws.com/businessreg/";
		String si_code = vo.getSi_code();
		String sa_bank = vo.getSa_bankbook_image();
		String sa_buss = vo.getSa_business_registration_image();
		vo.setSa_bankbook_image(bankUrl+si_code+sa_bank);
		vo.setSa_business_registration_image(bussUrl+si_code+sa_buss);
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
	//입점문의 1단계
	@GetMapping("/storeInquiry.user")
	public String tostoreInquiryPage() {
		System.out.println("storeInquiry");
		return "/info/info_storeInquiry";
	}
	//입점문의에서 form 문자 및 체크
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
	//입점문의 2단계
	@GetMapping("/register.store")
	public String storeReg() {
		System.out.println("storeRegForm");
		return "/storeRegForm";
	}
	//register.store 등록 매핑
	@RequestMapping("/regisStoreForm.admin")
	public String regisStoreForm(StoreFormVO vo) {
		String bankUrl = "https://walkingorder.s3.ap-northeast-2.amazonaws.com/bankcopy/";
		String bussUrl = "https://walkingorder.s3.ap-northeast-2.amazonaws.com/businessreg/";
		String sf_code = vo.getSf_code();
		String sf_bank = vo.getSf_bankbook_image();
		String sf_buss = vo.getSf_business_registration_image();
		vo.setSf_bankbook_image(bankUrl+sf_code+sf_bank);
		vo.setSf_business_registration_image(bussUrl+sf_code+sf_buss);
		aStoreService.insertStoreForm(vo);
		System.out.println("승인목록 확인+ DB확인");
		return "redirect:/index.user";
	}
	
	@GetMapping("/store_pending.admin")
	public String storePendingList(StoreFormVO vo, Model model) {
		System.out.println("store_pending");
		List<StoreFormVO> storePendingList = aStoreService.storePendingList();
		model.addAttribute("storePendingList" ,storePendingList);
		return "/store/store_pending";
	}
	
	//입점 승인 대기 모달 클릭으로...
		@ResponseBody
		@RequestMapping(value="/storependingAlert.admin", method=RequestMethod.POST)
		public int storependingAlert(@RequestBody HashMap<String,String> param) {
			String status = param.get("status");
			String sf_code = param.get("sf_code");
			HashMap<String,String> change = new HashMap();
			//승인일 경우 계정 만들어줌 (id,pw = 사업자번호)
			if(status.equals("승인")) {
				
			} else if (status.equals("서류보안")) {
				
			} else if (status.equals("검토")) {
				
			} else if (status.equals("수정")) {
				
			}
			
			//이부분은 문자가 가니까 일단 막았음
			MessageSend ms = new MessageSend();
//			String sms_title = "[워킹오더] 가게등록 안내";
//			String sms_text = "http://localhost:8080/join_inq.admin\n영업일 기준 1~3일 내로 연락드립니다.";
//			int result = ms.sendLMS(f_tel,sms_title, sms_text);
			return 1;
		}
	
}
