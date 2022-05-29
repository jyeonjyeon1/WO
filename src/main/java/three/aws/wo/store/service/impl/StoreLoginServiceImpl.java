package three.aws.wo.store.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.store.dao.StoreLoginDAO;
import three.aws.wo.store.service.StoreLoginService;
import three.aws.wo.store.vo.StoreVO;

@Service
public class StoreLoginServiceImpl implements StoreLoginService {
	@Autowired
	private StoreLoginDAO storeLoginDAO;
	
	@Override
	public StoreVO storeLoggin(String sa_acc_no) throws Exception {
		return storeLoginDAO.storeLoggin(sa_acc_no);
	}
}
