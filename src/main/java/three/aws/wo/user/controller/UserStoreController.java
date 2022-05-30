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
		String searchType = request.getParameter("searchType");
		String pagenum = request.getParameter("page");
		
		
		String parking = request.getParameter("parking");
		String room = request.getParameter("room");
		String seat = request.getParameter("seat");
		String groupseat = request.getParameter("groupseat");
		String wifi = request.getParameter("wifi");
		String babyseat = request.getParameter("babyseat");
		String disabled = request.getParameter("disabled");
		String pet = request.getParameter("pet");
		
		SearchVO searchvo = new SearchVO();
		CriteriaStore criStore = new CriteriaStore();
		
		if(search==null) {
			search="";
		}
		
		searchvo.setSearch(search);
		searchvo.setCriStore(criStore);
		searchvo.setSearchType(searchType);
		
		searchvo.setParking(parking);
		searchvo.setRoom(room);
		searchvo.setSeat(seat);
		searchvo.setGroupseat(groupseat);
		searchvo.setWifi(wifi);
		searchvo.setBabyseat(babyseat);
		searchvo.setDisabled(disabled);
		searchvo.setPet(pet);
		
		List<StoreVO> storeListByPage = uStoreService.storeListByPage(searchvo);
		int storeListByPageCount = uStoreService.storeListByPageCount(searchvo);
		
		model.addAttribute("criStore", criStore);
		model.addAttribute("search", search);
		model.addAttribute("searchType", searchType);
		model.addAttribute("userPageChange", storeListByPage);
		model.addAttribute("storeListByPageCount", storeListByPageCount);
		
		model.addAttribute("parking", parking);
		model.addAttribute("room", room);
		model.addAttribute("seat", seat);
		model.addAttribute("groupseat", groupseat);
		model.addAttribute("wifi", wifi);
		model.addAttribute("babyseat", babyseat);
		model.addAttribute("disabled", disabled);
		model.addAttribute("pet", pet);
		
		if(pagenum != null) {
			int paging = Integer.parseInt(pagenum);
			searchvo = new SearchVO();
			criStore = new CriteriaStore(paging, 10);
			
			search = request.getParameter("search");
			searchType = request.getParameter("searchType");
			pagenum = request.getParameter("page");
			
			searchvo.setSearch(search);
			searchvo.setCriStore(criStore);
			searchvo.setSearchType(searchType);
			
			searchvo.setParking(parking);
			searchvo.setRoom(room);
			searchvo.setSeat(seat);
			searchvo.setGroupseat(groupseat);
			searchvo.setWifi(wifi);
			searchvo.setBabyseat(babyseat);
			searchvo.setDisabled(disabled);
			searchvo.setPet(pet);
			
			storeListByPage = uStoreService.storeListByPage(searchvo);
			storeListByPageCount = uStoreService.storeListByPageCount(searchvo);
			
			model.addAttribute("criStore", criStore);
			model.addAttribute("userPageChange", storeListByPage);
			model.addAttribute("search", search);
			model.addAttribute("searchType", searchType);
			model.addAttribute("storeListByPageCount", storeListByPageCount);
		}
		
		return "/order/order_storeList";
	}

}