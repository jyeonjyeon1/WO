package three.aws.wo.store.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.OrdersVO;

@Repository
public class SOrderserviceDAO {
	@Inject
	private SqlSessionTemplate sqlSession;
	
	public List<OrdersVO> orderList(String si_code) {
		return sqlSession.selectList("SOrderserviceDAO.orderList",si_code);
	}

	public List<BasketVO> orderDetailList(String si_code) {
		return sqlSession.selectList("SOrderserviceDAO.orderDetailList",si_code);
	}
	
	public List<OrdersVO> dateOoneday(HashMap<String, String> map) {
		return sqlSession.selectList("SOrderserviceDAO.dateOoneday",map);
	}
	
	public List<BasketVO> dateOonedayDt(HashMap<String, String> map) {
		return sqlSession.selectList("SOrderserviceDAO.dateOonedayDt",map);
	}
	
	public List<OrdersVO> dateOPeriod(HashMap<String, String> map) {
		return sqlSession.selectList("SOrderserviceDAO.dateOPeriod",map);
	}
	
	public List<BasketVO> dateOPeriodDt(HashMap<String, String> map) {
		return sqlSession.selectList("SOrderserviceDAO.dateOPeriodDt",map);
	}
}
