package three.aws.wo.store.service;

import three.aws.wo.store.vo.StoreVO;

public interface StoreLoginService {
	
	public StoreVO storeLoggin(String sa_acc_no) throws Exception;
}
