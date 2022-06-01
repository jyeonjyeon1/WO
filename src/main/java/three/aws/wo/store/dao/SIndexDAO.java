package three.aws.wo.store.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.OrdersVO;

@Repository
public class SIndexDAO {
	@Inject
	private SqlSessionTemplate sqlSession;

	public void changeDueTime(HashMap<String, Object> map) {
		sqlSession.update("SIndexDAO.changeDueTime",map);
	}

	public List<OrdersVO> storeOrders(String si_code) {
		return sqlSession.selectList("SIndexDAO.storeOrders",si_code);
	}

	public List<BasketVO> orderDetails(String si_code) {
		return sqlSession.selectList("SIndexDAO.orderDetails",si_code);
	}

	public void changeOState(HashMap<String, String> param) {
		sqlSession.update("SIndexDAO.changeOState",param);
	}

	public void deleteBasketOrder(HashMap<String, String> param) {
		sqlSession.delete("SIndexDAO.deleteBasketOrder",param);
	}

	public OrdersVO newOrder(String si_code) {
		return sqlSession.selectOne("SIndexDAO.newOrder",si_code);
	}
	
	public void OrderCancel(HashMap<String, String> map) {
		sqlSession.update("SIndexDAO.OrderCancel",map);
	}
	
}
