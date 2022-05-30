package three.aws.wo.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.dao.UserMenuListDAO;
import three.aws.wo.user.service.UserMenuListService;
import three.aws.wo.user.vo.MenuListVO;
@Service
public class UserMenuListImpl implements UserMenuListService {
	@Autowired
	private UserMenuListDAO userMenuListDAO;
	
	@Override
	public List<StoreVO> storeInfo(String si_code) {
		return userMenuListDAO.storeInfo(si_code);
	}
	
	@Override
	public List<MenuListVO> menuTitle(String si_code) {
		return userMenuListDAO.menuTitle(si_code);
	}
	
	@Override
	public List<MenuListVO> menuList(String si_code) {
		return userMenuListDAO.menuList(si_code);
	}
	
	@Override
	public List<MenuListVO> optionList(String si_code) {
		return userMenuListDAO.optionList(si_code);
	}
	
	@Override
	public List<MenuListVO> basicOptionList(String si_code) {
		return userMenuListDAO.basicOptionList(si_code);
	}
	
	/*
	 * @Override public void addMenu(BasketVO vo) { userMenuListDAO.addMenu(vo); }
	 */

}
