package three.aws.wo.store.service;

import java.util.List;

import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.OrdersVO;

public interface SOrderService {
	
	List<OrdersVO> orderList(String si_code);
	List<BasketVO> orderDetailList(String si_code);
	
}
