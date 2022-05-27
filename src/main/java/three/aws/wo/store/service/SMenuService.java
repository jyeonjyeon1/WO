package three.aws.wo.store.service;

import java.util.HashMap;
import java.util.List;

import three.aws.wo.store.vo.MenuAndOptionVO;
import three.aws.wo.store.vo.MenuBasicOptionVO;
import three.aws.wo.store.vo.StoreMenuGroupVO;
import three.aws.wo.store.vo.StoreMenuVO;
import three.aws.wo.store.vo.StoreOptionGroupVO;
import three.aws.wo.store.vo.StoreOptionVO;

public interface SMenuService {
	
	List<StoreMenuVO> storeMenuList(String storeName);
	List<StoreMenuGroupVO> storeMgList(String storeName);
	void insertMgName(HashMap<String , String> param);
	List<StoreOptionGroupVO> ogList(String storeName);
	List<StoreOptionVO> optionList(String storeName);
	List<MenuAndOptionVO> MAOList(String storeName);
	List<MenuBasicOptionVO> basicOpList(String storeName);
	void deleteMenuGroup(HashMap<String, String> map);
	void deleteMenuGroup_MAO(HashMap<String, String> map);
	void updateMenuGroup(HashMap<String, String> map);
	void updateMenuGroup_MAO(HashMap<String, String> map);
	String maxMgSeq(String si_code);
	String maxMenuSeq(HashMap<String, Object> map);
	String maxOgbSeq(String si_code);
	String maxOpbSeq(HashMap<String, Object> map);
	void insertMenu(HashMap<String, Object> map);
	void insertOGB(HashMap<String, Object> map);
	int getm_seq(HashMap<String, Object> map);
	int getogb_seq(HashMap<String, Object> map);
	void insertOPB(HashMap<String, Object> map);
	void updateMenu(HashMap<String, Object> map);
	void updateOGB(HashMap<String, Object> map);
	int ogbSeqfromMSeq(HashMap<String, Object> map);
	String ogbCodefromMSeq(HashMap<String, Object> map);
	void deleteOptionBasics(HashMap<String, Object> map);
	void deleteMenu(HashMap<String, Object> map);
	void deleteMenu_MAO(HashMap<String, Object> map);
	//option start
	String maxOgCode(String si_code);
	String maxOpCode(HashMap<String, Object> map);
	void addOg(HashMap<String, Object> map);
	int currentOg_seq(HashMap<String, Object> map);
	void addOp1(HashMap<String, Object> map);
	void addOp2(HashMap<String, Object> map);
	void updateOgRos(HashMap<String, Object> map);
	void updateOptionGroup(HashMap<String, String> map);
	void updateOptionGroup_MAO(HashMap<String, String> map);
	void deleteOptionGroup(HashMap<String, String> map);
	void deleteOptionGroup_MAO(HashMap<String, String> map);
	void updateOption(HashMap<String, Object> map);
	void updateOption_MAO(HashMap<String, Object> map);
	void deleteOption(HashMap<String, String> map);
	void deleteOption_MAO(HashMap<String, String> map);
	String maxOptionSeq(HashMap<String, Object> map);
	void insertOptions(HashMap<String, Object> mapp);
	List<StoreOptionVO> optionByOgSeq(HashMap<String, Object> mapp);
	void deleteMAObyMSeq(HashMap<String, Object> mapp);
	void insertMAO(HashMap<String, Object> mappp);
	int checkPendingMenuImg(HashMap<String, String> param);
	void updatePendingMenuImg(HashMap<String, String> param);
}