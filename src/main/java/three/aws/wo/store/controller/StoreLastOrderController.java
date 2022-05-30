package three.aws.wo.store.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.OrdersVO;
import three.aws.wo.store.service.SLastOrderService;
@Controller
public class StoreLastOrderController {
	
	@GetMapping("/Ooneday.store")
	public String toOOnedayPage() {
		System.out.println("store lastOrder_oneday");
		return "/order/lastOrder_oneday";
	}
}