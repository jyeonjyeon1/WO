package three.aws.wo.store.service;

import three.aws.wo.store.vo.StoreVO;

public interface StoreLoginService {
	
	public StoreVO encryption(String sa_acc) throws Exception;
}
