package three.aws.wo.admin.service;

import java.util.HashMap;

public interface AdminService {
	int adminLogin(HashMap<String, String> param) throws Exception;

	String getAdminName(String a_name);
}
