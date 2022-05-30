package three.aws.wo.store.service;

import java.util.HashMap;
import java.util.List;

import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.OrdersVO;

public interface SIndexService {

	void changeDueTime(HashMap<String, Object> map);
	List<OrdersVO> storeOrders(String si_code);
	List<BasketVO> orderDetails(String si_code);
	void changeOState(HashMap<String, String> param);
	void deleteBasketOrder(HashMap<String, String> param);
	OrdersVO newOrder(String si_code);

}
