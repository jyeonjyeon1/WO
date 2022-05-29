package three.aws.wo.admin.service;

import java.util.HashMap;
import java.util.List;

import three.aws.wo.admin.vo.PointVO;
import three.aws.wo.user.vo.OrdersVO;

public interface AOrderService {
	List<PointVO> pointList();
	List<OrdersVO> orderList(String si_code);
	List<OrdersVO> orderList();
	void changePoint(HashMap<String, String> paramMapping);
}
