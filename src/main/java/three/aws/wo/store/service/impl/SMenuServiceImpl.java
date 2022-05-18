package three.aws.wo.store.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.store.dao.SMenuDAO;
import three.aws.wo.store.service.SMenuService;
import three.aws.wo.store.vo.StoreMenuGroupVO;
import three.aws.wo.store.vo.StoreMenuVO;

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
}
