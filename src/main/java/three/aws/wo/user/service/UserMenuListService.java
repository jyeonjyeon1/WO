package three.aws.wo.user.service;

import java.util.List;

import three.aws.wo.user.vo.BasketVO;
import three.aws.wo.user.vo.MenuListVO;

public interface UserMenuListService {
	List<MenuListVO> menuTitle();

	List<MenuListVO> menuList();

	List<MenuListVO> optionList();
	
	List<MenuListVO> basicOptionList();
	
	/* void addMenu(BasketVO vo) throws Exception; */
}
