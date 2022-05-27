package three.aws.wo.user.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.vo.MenuListVO;
import three.aws.wo.user.vo.OrdersVO;

@Repository
public class UserMenuListDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<MenuListVO> menutitle() {
		return sqlSession.selectList("UserMenuListDAO.menutitle");

	}
	
}
