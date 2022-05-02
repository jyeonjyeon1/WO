package three.aws.wo.admin.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.admin.dao.AdminDAO;
import three.aws.wo.admin.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDAO adminDAO;
	
	@Override
	public int adminLogin(HashMap<String, String> param) throws Exception {
		return adminDAO.adminLogin(param);
	}

	@Override
	public String getAdminName(String a_name) {
		return adminDAO.getAdminName(a_name);
	}
	
	

}
