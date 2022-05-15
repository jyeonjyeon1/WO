package three.aws.wo.user.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.dao.UserOrderDAO;
import three.aws.wo.user.service.UserOrderService;
import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.OrdersVO;
@Service
public class UserOrderServiceImpl implements UserOrderService {
	@Autowired
	private UserOrderDAO userOrderDAO;
	
	@Override
	public List<BasketVO> cartList(String u_id) {
		return userOrderDAO.cartList(u_id);
	}

	@Override
	public int removeCartCheck(int b_seq) {
		return userOrderDAO.removeCartCheck(b_seq);
	}

	@Override
	public void removeCart(int b_seq) {
		userOrderDAO.removeCart(b_seq);
	}

	@Override
	public StoreVO cartStore(String u_id) {
		return userOrderDAO.cartStore(u_id);
	}

	@Override
	public void updateCart(HashMap<String, Integer> param) {
		userOrderDAO.updateCart(param);
	}

	@Override
	public int dailySeq() {
		return userOrderDAO.dailySeq();
	}

	@Override
	public void insertOrder(HashMap<String, Object> insertInfo) {
		userOrderDAO.insertOrder(insertInfo);
	}

	@Override
	public void successOrder(String o_code) {
		userOrderDAO.successOrder(o_code);
	}

	@Override
	public void resetCart(String u_id) {
		userOrderDAO.resetCart(u_id);
	}

	@Override
	public OrdersVO orderComplete(String o_code) {
		return userOrderDAO.orderComplete(o_code);
	}

	@Override
	public void orderPointUpdate(HashMap<String, Object> insertPoint) {
		userOrderDAO.orderPointUpdate(insertPoint);
	}

	@Override
	public void orderPointAdd(HashMap<String, Object> insertPoint) {
		userOrderDAO.orderPointAdd(insertPoint);
	}

	@Override
	public String getPointPercentage() {
		return userOrderDAO.getPointPercentage();
	}

	@Override
	public String isPointUse() {
		return userOrderDAO.isPointUse();
	}

	@Override
	public void orderPointUse(HashMap<String, Object> insertPoint) {
		userOrderDAO.orderPointUse(insertPoint);
	}

}
