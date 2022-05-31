package three.aws.wo.store.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.store.vo.StoreReviewVO;
@Repository
public class StoreReviewDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<StoreReviewVO> reviewlist(String si_code) {
		return sqlSession.selectList("StoreReviewDAO.reviewlist", si_code);

	}

	public void reviewanswer(StoreReviewVO vo) {
		sqlSession.update("StoreReviewDAO.reviewanswer", vo);
	}
	
}
