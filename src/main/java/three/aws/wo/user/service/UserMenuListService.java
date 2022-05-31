package three.aws.wo.user.service;

import java.util.List;

import three.aws.wo.store.vo.StoreVO;
import three.aws.wo.user.vo.MenuListVO;
import three.aws.wo.user.vo.ReviewVO;

public interface UserMenuListService {
	
	StoreVO storeInfo(String si_code);
	
	List<MenuListVO> menuTitle(String si_code);

	List<MenuListVO> menuList(String si_code);

	List<MenuListVO> optionList(String si_code);
	
	List<MenuListVO> basicOptionList(String si_code);
	
	List<ReviewVO> storeReview(String si_code);
}
