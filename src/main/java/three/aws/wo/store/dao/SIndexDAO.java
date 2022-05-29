package three.aws.wo.store.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SIndexDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
}
