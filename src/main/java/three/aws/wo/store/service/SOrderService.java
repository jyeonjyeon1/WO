package three.aws.wo.store.service;

import java.util.HashMap;
import java.util.List;

import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.OrdersVO;

public interface SOrderService {
	
	List<OrdersVO> orderList(String si_code);
	List<BasketVO> orderDetailList(String si_code);
	
	List<OrdersVO> dateOoneday(HashMap<String, String> map);
	List<BasketVO> dateOonedayDt(HashMap<String, String> map);
	
	List<OrdersVO> dateOPeriod(HashMap<String, String> map);
	List<BasketVO> dateOPeriodDt(HashMap<String, String> map);
	List<OrdersVO> dailyOutput(HashMap<String, String> map);
	
}
