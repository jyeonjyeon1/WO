package three.aws.wo.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.user.dao.UserMenuListDAO;
import three.aws.wo.user.vo.MenuListVO;

@Controller
public class UserMenuListController {
	@Autowired
	private UserMenuListDAO userMenuListDAO;

	// 장바구니로 이동 메서드
	@RequestMapping("/menuList.user")
	public String cartList(HttpSession session, Model model) {
		List<MenuListVO> menutitle = userMenuListDAO.menutitle();
		model.addAttribute("menutitle", menutitle);
		return "/order/order_menuList";
	}
}
