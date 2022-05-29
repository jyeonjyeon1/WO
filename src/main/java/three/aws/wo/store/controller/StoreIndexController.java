package three.aws.wo.store.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.store.service.SIndexService;
import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.vo.OrdersVO;

@Controller
public class StoreIndexController {
	@Autowired
	private SIndexService sIndexService;
	
	@RequestMapping("/index.store")
	public String toindexPage(Model model, HttpSession session) {
		System.out.println("store index");
		StoreVO svo = (StoreVO) session.getAttribute("storeSession");
		String si_code = "";
		if (svo != null) {
			si_code = svo.getSi_code();
		} else {
			si_code = "2222111212";
		}
//		List<OrdersVO> orderList = sIndexService.orderList(si_code);
		
		return "/index";
	}
}
