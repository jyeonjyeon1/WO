package three.aws.wo.store.service.impl;

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
	
}
