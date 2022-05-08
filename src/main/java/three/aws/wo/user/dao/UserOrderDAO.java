package three.aws.wo.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.user.vo.BasketVO;

@Repository
public class UserOrderDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<BasketVO> cartList(String u_id) {
		return sqlSession.selectList("UserOrderDAO.cartList", u_id);

	}
	
}
