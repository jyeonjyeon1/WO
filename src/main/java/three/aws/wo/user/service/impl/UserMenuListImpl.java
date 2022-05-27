package three.aws.wo.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.user.dao.UserMenuListDAO;
import three.aws.wo.user.service.UserMenuListService;
import three.aws.wo.user.vo.MenuListVO;
@Service
public class UserMenuListImpl implements UserMenuListService {
	@Autowired
	private UserMenuListDAO userMenuListDAO;
	
	@Override
	public List<MenuListVO> menutitle() {
		return userMenuListDAO.menutitle();
	}

}
