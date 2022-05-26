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

	@Override
	public String maxMgSeq(String si_code) {
		return sMenuDAO.maxMgSeq(si_code);
	}

	@Override
	public String maxMenuSeq(HashMap<String, Object> map) {
		return sMenuDAO.maxMenuSeq(map);
	}

	@Override
	public String maxOgbSeq(String si_code) {
		return sMenuDAO.maxOgbSeq(si_code);
	}

	@Override
	public String maxOpbSeq(HashMap<String, Object> map) {
		return sMenuDAO.maxOpbSeq(map);
	}

	@Override
	public void insertMenu(HashMap<String, Object> map) {
		sMenuDAO.insertMenu(map);
	}

	@Override
	public void insertOGB(HashMap<String, Object> map) {
		sMenuDAO.insertOGB(map);
	}

	@Override
	public int getm_seq(HashMap<String, Object> map) {
		return sMenuDAO.getm_seq(map);
	}

	@Override
	public int getogb_seq(HashMap<String, Object> map) {
		return sMenuDAO.getogb_seq(map);
	}

	@Override
	public void insertOPB(HashMap<String, Object> map) {
		sMenuDAO.insertOPB(map);
	}

	@Override
	public void updateMenu(HashMap<String, Object> map) {
		sMenuDAO.updateMenu(map);
	}

	@Override
	public void updateOGB(HashMap<String, Object> map) {
		sMenuDAO.updateOGB(map);
	}

	@Override
	public int ogbSeqfromMSeq(HashMap<String, Object> map) {
		return sMenuDAO.ogbSeqfromMSeq(map);
	}

	@Override
	public String ogbCodefromMSeq(HashMap<String, Object> map) {
		return sMenuDAO.ogbCodefromMSeq(map);
	}

	@Override
	public void deleteOptionBasics(HashMap<String, Object> map) {
		sMenuDAO.deleteOptionBasics(map);

	}

	@Override
	public void deleteMenu(HashMap<String, Object> map) {
		sMenuDAO.deleteMenu(map);
	}

	@Override
	public void deleteMenu_MAO(HashMap<String, Object> map) {
		sMenuDAO.deleteMenu_MAO(map);
	}
	
	//option start
	@Override
	public String maxOgCode(String si_code) {
		return sMenuDAO.maxOgCode(si_code);
	}
	
	@Override
	public String maxOpCode(HashMap<String , Object> map) {
		return sMenuDAO.maxOpCode(map);
	}
	
	@Override
	public void addOg(HashMap<String, Object> map) {
		sMenuDAO.addOg(map);
	}
	
	@Override
	public int currentOg_seq(HashMap<String, Object> map) {
		return sMenuDAO.currentOg_seq(map);
	}
	
	@Override
	public void addOp1(HashMap<String, Object> map) {
		sMenuDAO.addOp1(map);
	}
	
	@Override
	public void addOp2(HashMap<String, Object> map) {
		sMenuDAO.addOp2(map);
	}
	
	@Override
	public void updateOgRos(HashMap<String, Object> map) {
		sMenuDAO.updateOgRos(map);
	}

	@Override
	public void updateOptionGroup(HashMap<String, String> map) {
		sMenuDAO.updateOptionGroup(map);
	}

	@Override
	public void updateOptionGroup_MAO(HashMap<String, String> map) {
		sMenuDAO.updateOptionGroup_MAO(map);
	}
	
	@Override
	public void deleteOptionGroup(HashMap<String, String> map) {
		sMenuDAO.deleteOptionGroup(map);
	}

	@Override
	public void deleteOptionGroup_MAO(HashMap<String, String> map) {
		sMenuDAO.deleteOptionGroup_MAO(map);
	}

	@Override
	public void updateOption(HashMap<String, Object> map) {
		sMenuDAO.updateOption(map);
	}

	@Override
	public void updateOption_MAO(HashMap<String, Object> map) {
		sMenuDAO.updateOption_MAO(map);
	}
	
	@Override
	public void deleteOption(HashMap<String, String> map) {
		sMenuDAO.deleteOption(map);
	}

	@Override
	public void deleteOption_MAO(HashMap<String, String> map) {
		sMenuDAO.deleteOption_MAO(map);
	}

	@Override
	public String maxOptionSeq(HashMap<String, Object> map) {
		return sMenuDAO.maxOptionSeq(map);
	}

	@Override
	public void insertOptions(HashMap<String, Object> mapp) {
		sMenuDAO.insertOptions(mapp);
	}

	@Override
	public List<StoreOptionVO> optionByOgSeq(HashMap<String, Object> mapp) {
		return sMenuDAO.optionByOgSeq(mapp);
	}

	@Override
	public void deleteMAObyOgSeq(HashMap<String, Object> mapp) {
		sMenuDAO.deleteMAObyOgSeq(mapp);
	}
	
}