package three.aws.wo.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.MenuListVO;

@Repository
public class UserMenuListDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<MenuListVO> menuTitle() {
		return sqlSession.selectList("UserMenuListDAO.menuTitle");
	}
	
	public List<MenuListVO> menuList() {
		return sqlSession.selectList("UserMenuListDAO.menuList");
	}
	
	public List<MenuListVO> optionList() {
		return sqlSession.selectList("UserMenuListDAO.optionList");
	}
	
	public List<MenuListVO> basicOptionList() {
		return sqlSession.selectList("UserMenuListDAO.basicOptionList");
	}
	
	/*
	 * public void addMenu(BasketVO vo) {
	 * sqlSession.update("UserMenuListDAO.addMenu", vo); }
	 */
	
}
