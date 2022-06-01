package three.aws.wo.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.admin.vo.PointVO;
import three.aws.wo.user.vo.OrdersVO;
@Repository
public class AOrderDAO {
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	public List<PointVO> pointList(){
		return sqlSession.selectList("AOrderDAO.pointList");
	}

	public List<OrdersVO> orderList(String si_code) {
		return sqlSession.selectList("AOrderDAO.orderList",si_code);
	}
	
	public List<OrdersVO> orderList() {
		return sqlSession.selectList("AOrderDAO.orderList");
	}

	public void changePoint(HashMap<String, String> paramMapping) {
		sqlSession.update("AOrderDAO.changePoint",paramMapping);
	}

	public List<OrdersVO> orderCancelList() {
		return sqlSession.selectList("AOrderDAO.orderCancelList");
	}
}
