package three.aws.wo.admin.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.admin.service.AStoreService;
import three.aws.wo.store.vo.FranchiseVO;
import three.aws.wo.store.vo.StoreVO;

@Controller
public class AdminStoreController {
	@Resource
	private AStoreService aStoreService;

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
	
}
