package three.aws.wo.store.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.store.dao.SMenuDAO;
import three.aws.wo.store.service.SMenuService;
import three.aws.wo.store.vo.MenuAndOptionVO;
import three.aws.wo.store.vo.MenuBasicOptionVO;
import three.aws.wo.store.vo.StoreMenuGroupVO;
import three.aws.wo.store.vo.StoreMenuVO;
import three.aws.wo.store.vo.StoreOptionGroupVO;
import three.aws.wo.store.vo.StoreOptionVO;

@Service
public class SMenuServiceImpl implements SMenuService {
	@Autowired
	private SMenuDAO sMenuDAO;
	
	@Override
	public List<StoreMenuVO> storeMenuList(String storeName) {
		return sMenuDAO.storeMenuList(storeName);
	}
	
	@Override
	public List<StoreMenuGroupVO> storeMgList(String storeName) {
		return sMenuDAO.storeMgList(storeName);
	}
	
	@Override
	public void insertMgName(HashMap<String, String> param) {
		sMenuDAO.insertMgName(param);
	}
	
	@Override
	public List<StoreOptionGroupVO> ogList(String storeName) {
		return sMenuDAO.ogList(storeName);
	}
	
	@Override
	public List<StoreOptionVO> optionList(String storeName) {
		return sMenuDAO.optionList(storeName);
	}
	
	@Override
	public List<MenuAndOptionVO> MAOList(String storeName) {
		return sMenuDAO.MAOList(storeName);
	}
	
	@Override
	public List<MenuBasicOptionVO> basicOpList(String storeName) {
		return sMenuDAO.basicOpList(storeName);
	}

	@Override
	public void deleteMenuGroup(HashMap<String, String> map) {
		sMenuDAO.deleteMenuGroup(map);
	}

	@Override
	public void deleteMenuGroup_MAO(HashMap<String, String> map) {
		sMenuDAO.deleteMenuGroup_MAO(map);
	}

	@Override
	public void updateMenuGroup(HashMap<String, String> map) {
		sMenuDAO.updateMenuGroup(map);
	}

	@Override
	public void updateMenuGroup_MAO(HashMap<String, String> map) {
		sMenuDAO.updateMenuGroup_MAO(map);
	}
}
