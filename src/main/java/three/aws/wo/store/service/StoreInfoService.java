package three.aws.wo.store.service;

import java.util.HashMap;

public interface StoreInfoService {
	void updateTel(HashMap<String, String> map);
	void updatePyeon2(HashMap<String, Object> map);
	void updateSiStatus(HashMap<String, Object> map);
}
