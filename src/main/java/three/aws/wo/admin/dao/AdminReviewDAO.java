package three.aws.wo.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.user.vo.ReviewVO;
@Repository
public class AdminReviewDAO {
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	
	public List<ReviewVO> reviewList() { 
		return sqlSession.selectList("AdminReviewDAO.reviewList"); 
	}
	
	
	public void updateReview(ReviewVO vo) {
		sqlSession.update("AdminReviewDAO.updateReview", vo);
	}
	
}
