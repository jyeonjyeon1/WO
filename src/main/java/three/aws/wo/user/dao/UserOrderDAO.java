package three.aws.wo.user.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.OrdersVO;

@Repository
public class UserOrderDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<BasketVO> cartList(String u_id) {
		return sqlSession.selectList("UserOrderDAO.cartList", u_id);

	}

	public int removeCartCheck(int b_seq) {
		return sqlSession.selectOne("UserOrderDAO.removeCartCheck",b_seq);
	}

	public void removeCart(int b_seq) {
		sqlSession.delete("UserOrderDAO.removeCart",b_seq);		
	}

	public StoreVO cartStore(String u_id) {
		return sqlSession.selectOne("UserOrderDAO.cartStore",u_id);
	}

	public void updateCart(HashMap<String, Integer> param) {
		sqlSession.update("UserOrderDAO.updateCart",param);		
	}

	public int dailySeq() {
		if(sqlSession.selectOne("UserOrderDAO.dailySeq")==null) {
			return 0;
		}
		return sqlSession.selectOne("UserOrderDAO.dailySeq");
	}

	public void insertOrder(HashMap<String, Object> insertInfo) {
		sqlSession.insert("UserOrderDAO.insertOrder",insertInfo);
	}

	public void successOrder(String o_code) {
		sqlSession.update("UserOrderDAO.successOrder",o_code);
	}

	public void resetCart(String u_id) {
		sqlSession.delete("UserOrderDAO.resetCart",u_id);
	}

	public OrdersVO orderComplete(String o_code) {
		return sqlSession.selectOne("UserOrderDAO.orderComplete",o_code);
	}

	public void orderPointUpdate(HashMap<String, Object> insertPoint) {
		sqlSession.update("UserOrderDAO.orderPointUpdate",insertPoint);
	}

	public void orderPointAdd(HashMap<String, Object> insertPoint) {
		sqlSession.insert("UserOrderDAO.orderPointAdd",insertPoint);
	}

	public String getPointPercentage() {
		return sqlSession.selectOne("UserOrderDAO.getPointPercentage");
	}

	public String isPointUse() {
		return sqlSession.selectOne("UserOrderDAO.isPointUse");
	}

	public void orderPointUse(HashMap<String, Object> insertPoint) {
		sqlSession.insert("UserOrderDAO.orderPointUse",insertPoint);
	}

	public List<OrdersVO> myOrderList(String u_id) {
		return sqlSession.selectList("UserOrderDAO.myOrderList", u_id);
	}

	public List<OrdersVO> myCurrentList(String u_id) {
		return sqlSession.selectList("UserOrderDAO.myCurrentList", u_id);
	}

	public OrdersVO myorderDetail(String order) {
		return sqlSession.selectOne("UserOrderDAO.myorderDetail", order);
	}

	public void replicateCart(String u_id) {
		sqlSession.insert("UserOrderDAO.replicateCart",u_id);
	}

	public void updateBasketOrder(HashMap<String, Object> map) {
		sqlSession.update("UserOrderDAO.updateBasketOrder",map);
	}

	public void insertCartItem(BasketVO vo) {
		sqlSession.insert("UserOrderDAO.insertCartItem",vo);
	}

	public String siBasket(String u_id) {
		return sqlSession.selectOne("UserOrderDAO.siBasket",u_id);
	}
	
}
