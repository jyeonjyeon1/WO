package three.aws.wo.user.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.vo.BasketVO;

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
	
}
