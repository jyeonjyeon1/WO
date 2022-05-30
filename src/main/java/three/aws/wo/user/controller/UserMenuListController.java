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
		
		return "/order/order_menuList";
	}
	
	@RequestMapping("/addMenu.user")
	public String addMenu(BasketVO vo) {		
		//userMenuListDAO.addMenu(vo);
		System.out.println(vo);
		vo.setB_quantity(1);
		try {
			userOrderService.insertCartItem(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
//		String u_id = vo.getU_id();
//		String si_code = vo.getSi_code();
//		int mg_seq = vo.getM_seq();
//		String opb_code = vo.getOpb_code();
//		int b_quantity = 1;
//		String op_code1 = vo.getOp_code1();
//		String op_code2 = vo.getOp_code2();
//		String op_code3 = vo.getOp_code3();
//		String op_code4 = vo.getOp_code4();
//		String op_code5 = vo.getOp_code5();
//		HashMap<String,Object> map = new HashMap<String,Object>();
		
		return "/order/addcartPro";
	}
}
