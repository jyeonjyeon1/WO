package three.aws.wo.user.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.service.UserMenuListService;
import three.aws.wo.user.service.UserOrderService;
import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.MenuListVO;
import three.aws.wo.user.vo.ReviewVO;

@Controller
public class UserMenuListController {
	@Autowired
	private UserMenuListService userMenuListDAO;
	@Inject
	private UserOrderService userOrderService;
	
	@RequestMapping("/menuList.user")
	public String menuList(HttpSession session, Model model, HttpServletRequest request) {
		String si_code = request.getParameter("store");
		
		StoreVO storeInfo = userMenuListDAO.storeInfo(si_code);
		model.addAttribute("storeInfo", storeInfo);
		
		List<MenuListVO> menuTitle = userMenuListDAO.menuTitle(si_code);
		model.addAttribute("menuTitle", menuTitle);
		
		List<MenuListVO> menuList = userMenuListDAO.menuList(si_code);
		model.addAttribute("menuList", menuList);
		
		List<MenuListVO> optionList = userMenuListDAO.optionList(si_code);
		model.addAttribute("optionList", optionList);
		
		List<MenuListVO> basicOptionList = userMenuListDAO.basicOptionList(si_code);
		model.addAttribute("basicOptionList", basicOptionList);
		
		List<ReviewVO> storeReview = userMenuListDAO.storeReview(si_code);
		model.addAttribute("storeReview", storeReview);
		
		return "/order/order_menuList";
	}
	
	@RequestMapping("/addMenu.user")
	public String addMenu(BasketVO vo) {		
		//userMenuListDAO.addMenu(vo);
		System.out.println(vo);
		
		int b_seq = userOrderService.checkSameCart(vo);
		if(b_seq == 0) {//없을 경우
			vo.setB_quantity(1);
			try {
				userOrderService.insertCartItem(vo);
			} catch (Exception e) {
				System.err.println("insertCartItem");
				e.printStackTrace();
			}
		}else {
			vo.setB_seq(b_seq);
			try {
				userOrderService.updateSameCart(b_seq);
			} catch (Exception e) {
				System.err.println("updateSameCart");
				e.printStackTrace();
			}
		}
		
		return "/order/addcartPro";
	}
}
