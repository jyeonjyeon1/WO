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

}
