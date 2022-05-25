package three.aws.wo.admin.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.admin.dao.AOrderDAO;
import three.aws.wo.admin.service.AOrderService;
import three.aws.wo.admin.vo.PointVO;
import three.aws.wo.user.vo.OrdersVO;
@Service
public class AOrderServiceImpl implements AOrderService {

	@Autowired 
	private AOrderDAO aOrderDAO;
	
	@Override
	public List<PointVO> pointList() {
		return aOrderDAO.pointList();
	}

	@Override
	public List<OrdersVO> orderList(String si_code) {
		return aOrderDAO.orderList(si_code);
	}

	@Override
	public List<OrdersVO> orderList() {
		return aOrderDAO.orderList();
	}

	@Override
	public void changePoint(HashMap<String, String> paramMapping) {
		aOrderDAO.changePoint(paramMapping);
	}

}
