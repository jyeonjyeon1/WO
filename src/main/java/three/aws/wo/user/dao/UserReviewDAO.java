package three.aws.wo.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.user.vo.ReviewVO;
@Repository
public class UserReviewDAO {
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	public List<ReviewVO> reviewList(String u_id){
		return sqlSession.selectList("UserReviewDAO.reviewList", u_id);
	}
	
	 public void insertReview(ReviewVO vo) {
		 sqlSession.insert("UserReviewDAO.insertReview", vo); 
	 }
	 

	 public String getOrderCode() {
			return sqlSession.selectOne("UserReviewDAO.getOrderCode");
		}
}
