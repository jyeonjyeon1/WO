package three.aws.wo.user.service;

import java.util.HashMap;
import java.util.List;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.OrdersVO;

public interface UserMenuListService {
	List<BasketVO> cartList(String u_id);

	int removeCartCheck(int b_seq);
	void removeCart(int b_seq);
	StoreVO cartStore(String u_id);
	void updateCart(HashMap<String, Integer> param);

	int dailySeq();

	void insertOrder(HashMap<String, Object> insertInfo);

	void successOrder(String o_code);

	void resetCart(String u_id);

	OrdersVO orderComplete(String o_code);

	void orderPointUpdate(HashMap<String, Object> insertPoint);

	void orderPointAdd(HashMap<String, Object> insertPoint);

	String getPointPercentage();

	String isPointUse();

	void orderPointUse(HashMap<String, Object> insertPoint);
}
