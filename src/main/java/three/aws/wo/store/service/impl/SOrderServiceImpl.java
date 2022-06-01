package three.aws.wo.store.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import three.aws.wo.store.dao.SOrderserviceDAO;
import three.aws.wo.store.service.SOrderService;
import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.OrdersVO;

@Service
public class SOrderServiceImpl implements SOrderService {
	@Inject
	private SOrderserviceDAO sOrderServiceDAO;
	
	@Override
	public List<OrdersVO> orderList(String si_code) {
		return sOrderServiceDAO.orderList(si_code);
	}
	
	@Override
	public List<BasketVO> orderDetailList(String si_code) {
		return sOrderServiceDAO.orderDetailList(si_code);
	}
	
	
	@Override
	public List<OrdersVO> dateOoneday(HashMap<String , String> map) {
		return sOrderServiceDAO.dateOoneday(map);
	}
	
	@Override
	public List<BasketVO> dateOonedayDt(HashMap<String , String> map) {
		return sOrderServiceDAO.dateOonedayDt(map);
	}
	
	@Override
	public List<OrdersVO> dateOPeriod(HashMap<String , String> map) {
		return sOrderServiceDAO.dateOPeriod(map);
	}
	
	@Override
	public List<BasketVO> dateOPeriodDt(HashMap<String , String> map) {
		return sOrderServiceDAO.dateOPeriodDt(map);
	}
	@Override
	public List<OrdersVO> dailyOutput(HashMap<String , String> map) {
		return sOrderServiceDAO.dailyOutput(map);
	}
	
	
}
