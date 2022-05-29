package three.aws.wo.user.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.service.UStoreService;
import three.aws.wo.user.util.CriteriaStore;
import three.aws.wo.user.vo.SearchVO;

@Controller
public class UserStoreController {
	@Resource
	private UStoreService uStoreService;
//   private String SearchWord; //검색어 저장 할 아이

	// store 검색기능
	@RequestMapping("/storeList.user")
	public String storeList(StoreVO vo, Model model, HttpServletRequest request) {
		String search = request.getParameter("search");
		String pagnum = request.getParameter("page");
		
		SearchVO searchvo = new SearchVO();
		CriteriaStore cri = new CriteriaStore();
		
		if(search==null) {
			search="";
		}
		
		searchvo.setSearch(search);
		searchvo.setCri(cri);
		
		
		List<StoreVO> storeListByPage = uStoreService.storeListByPage(searchvo);
		int storeListByPageCount = uStoreService.storeListByPageCount(search);
		
		System.out.println(storeListByPageCount);
		System.out.println(search);
		System.out.println(cri.getPageNum());
		System.out.println(cri.getAmount());
		
		model.addAttribute("cri", cri);
		model.addAttribute("search", search);
		model.addAttribute("userPageChange", storeListByPage);
		model.addAttribute("storeListByPageCount", storeListByPageCount);
		
		if(pagnum != null) {
			int paging = Integer.parseInt(pagnum);
			storeListByPageCount = uStoreService.storeListByPageCount(search);
			searchvo = new SearchVO();
			cri = new CriteriaStore(paging, 10);
			
			searchvo.setSearch(search);
			searchvo.setCri(cri);;
			
			storeListByPage = uStoreService.storeListByPage(searchvo);
			
			System.out.println(search);
			System.out.println(cri);
			System.out.println(paging);
			model.addAttribute("cri", cri);
			model.addAttribute("search", search);
			model.addAttribute("userPageChange", storeListByPage);
			model.addAttribute("storeListByPageCount", storeListByPageCount);
		}
		
		return "/order/order_storeList";
	}

}