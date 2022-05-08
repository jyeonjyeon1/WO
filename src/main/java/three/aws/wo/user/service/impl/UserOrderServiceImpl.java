package three.aws.wo.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.user.dao.UserOrderDAO;
import three.aws.wo.user.service.UserOrderService;
import three.aws.wo.user.vo.BasketVO;
@Service
public class UserOrderServiceImpl implements UserOrderService {
	@Autowired
	private UserOrderDAO userOrderDAO;
	
	@Override
	public List<BasketVO> cartList(String u_id) {
		return userOrderDAO.cartList(u_id);
	}

}
