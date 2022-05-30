package three.aws.wo.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.dao.UserMenuListDAO;
import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.MenuListVO;

@Controller
public class UserMenuListController {
	@Autowired
	private UserMenuListDAO userMenuListDAO;

	
	@RequestMapping("/menuList.user")
	public String menuList(HttpSession session, Model model, HttpServletRequest request) {
		String si_code = request.getParameter("store");
		
		List<StoreVO> storeInfo = userMenuListDAO.storeInfo(si_code);
		model.addAttribute("storeInfo", storeInfo);
		
		List<MenuListVO> menuTitle = userMenuListDAO.menuTitle(si_code);
		model.addAttribute("menuTitle", menuTitle);
		
		List<MenuListVO> menuList = userMenuListDAO.menuList(si_code);
		model.addAttribute("menuList", menuList);
		
		List<MenuListVO> optionList = userMenuListDAO.optionList(si_code);
		model.addAttribute("optionList", optionList);
		
		List<MenuListVO> basicOptionList = userMenuListDAO.basicOptionList(si_code);
		model.addAttribute("basicOptionList", basicOptionList);
		
		return "/order/order_menuList";
	}
	
	@RequestMapping("/addMenu.user")
	public String addMenu(BasketVO vo, Model model) {		
		//userMenuListDAO.addMenu(vo);
		System.out.println(vo);

		return "/order/order_menuList";
	}
}
