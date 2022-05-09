package three.aws.wo.user.service;

import java.util.HashMap;
import java.util.List;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.vo.BasketVO;

public interface UserOrderService {
	List<BasketVO> cartList(String u_id);

	int removeCartCheck(int b_seq);
	void removeCart(int b_seq);
	StoreVO cartStore(String u_id);
	void updateCart(HashMap<String, Integer> param);
}
