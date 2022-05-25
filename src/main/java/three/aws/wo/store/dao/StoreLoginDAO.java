package three.aws.wo.store.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.store.vo.StoreVO;

@Repository
public class StoreLoginDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public StoreVO storeLoggin(String sa_acc_no)throws Exception {
		return sqlSession.selectOne("StoreLoginDAO.storeLoggin", sa_acc_no);
	}
}
