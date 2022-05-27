package three.aws.wo.store.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.store.dao.SInfoDAO;
import three.aws.wo.store.service.StoreInfoService;

@Service
public class StoreInfoServiceImpl implements StoreInfoService {
	@Autowired
	private SInfoDAO sInfoDAO;
	
	@Override
	public void updateTel(HashMap<String, String> map) {
		sInfoDAO.updateTel(map);
	}
	
	@Override
	public void updatePyeon2(HashMap<String, Object> map) {
		sInfoDAO.updatePyeon2(map);
	}
	
	@Override
	public void updateSiStatus(HashMap<String, Object> map) {
		sInfoDAO.updateSiStatus(map);
	}
	
	@Override
	public void updateAllday(HashMap<String, Object> map) {
		sInfoDAO.updateAllday(map);
	}
	
	@Override
	public void updateHoliday(HashMap<String, Object> map) {
		sInfoDAO.updateHoliday(map);
	}
}
