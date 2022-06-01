package three.aws.wo.store.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import three.aws.wo.store.dao.SIndexDAO;
import three.aws.wo.store.service.SIndexService;
import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.OrdersVO;
@Service
public class SIndexServiceImpl implements SIndexService {
	@Inject
	private SIndexDAO sIndexDAO;
	
	@Override
	public void changeDueTime(HashMap<String, Object> map) {
		sIndexDAO.changeDueTime(map);
	}
	@Override
	public List<OrdersVO> storeOrders(String si_code) {
		return sIndexDAO.storeOrders(si_code);
	}
	@Override
	public List<BasketVO> orderDetails(String si_code) {
		return sIndexDAO.orderDetails(si_code);
	}
	@Override
	public void changeOState(HashMap<String, String> param) {
		sIndexDAO.changeOState(param);
	}
	@Override
	public void deleteBasketOrder(HashMap<String, String> param) {
		sIndexDAO.deleteBasketOrder(param);
	}
	@Override
	public OrdersVO newOrder(String si_code) {
		return sIndexDAO.newOrder(si_code);
	}
	
	@Override
	public void OrderCancel(HashMap<String, String> map) {
		sIndexDAO.OrderCancel(map);
	}
}
