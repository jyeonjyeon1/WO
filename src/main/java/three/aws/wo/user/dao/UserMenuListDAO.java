package three.aws.wo.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.vo.MenuListVO;

@Repository
public class UserMenuListDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<StoreVO> storeInfo(String si_code) {
		return sqlSession.selectList("UserMenuListDAO.storeInfo", si_code);
	}
	
	public List<MenuListVO> menuTitle(String si_code) {
		return sqlSession.selectList("UserMenuListDAO.menuTitle", si_code);
	}
	
	public List<MenuListVO> menuList(String si_code) {
		return sqlSession.selectList("UserMenuListDAO.menuList", si_code);
	}
	
	public List<MenuListVO> optionList(String si_code) {
		return sqlSession.selectList("UserMenuListDAO.optionList", si_code);
	}
	
	public List<MenuListVO> basicOptionList(String si_code) {
		return sqlSession.selectList("UserMenuListDAO.basicOptionList", si_code);
	}
	
	/*
	 * public void addMenu(BasketVO vo) {
	 * sqlSession.update("UserMenuListDAO.addMenu", vo); }
	 */
	
}
