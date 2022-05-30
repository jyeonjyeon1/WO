package three.aws.wo.store.dao;

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
		return sqlSession.selectList("SIndexDAO.orderList",si_code);
	}

	public List<BasketVO> orderDetailList(String si_code) {
		return sqlSession.selectList("SIndexDAO.orderDetailList",si_code);
	}
}
