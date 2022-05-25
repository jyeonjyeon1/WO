package three.aws.wo.store.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.store.dao.StorePumjeolDAO;
import three.aws.wo.store.service.StorePumjeolSerivce;
@Service
public class StorePumjeolServiceImpl implements StorePumjeolSerivce {
	@Autowired
	private StorePumjeolDAO storePumjeolDAO;

	@Override
	public void updateMenuPumjeol(HashMap<String, Object> map) {
		storePumjeolDAO.updateMenuPumjeol(map);
	}

	@Override
	public void updateMenuPumjeol_MAO(HashMap<String, Object> map) {
		storePumjeolDAO.updateMenuPumjeol_MAO(map);
	}
	
	@Override
	public void updateOptionPumjeol(HashMap<String, Object> map) {
		storePumjeolDAO.updateOptionPumjeol(map);
	}

	@Override
	public void updateOptionPumjeol_MAO(HashMap<String, Object> map) {
		storePumjeolDAO.updateOptionPumjeol_MAO(map);
	}
}
