package three.aws.wo.user.service;

import java.util.List;

import three.aws.wo.user.vo.BasketVO;

public interface UserOrderService {
	List<BasketVO> cartList(String u_id);
}
