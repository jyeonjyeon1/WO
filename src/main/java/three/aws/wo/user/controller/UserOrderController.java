package three.aws.wo.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserOrderController {
	
	@RequestMapping(value="/orderc.user",method=RequestMethod.POST)
	public String orderComplete(){
		return "/order/order_complete";
	}
	
	@RequestMapping(value="/orderc.user",method=RequestMethod.GET)
	public String orderc(){
		return "/order/order_complete";
	}
}
