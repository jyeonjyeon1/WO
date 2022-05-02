package three.aws.wo.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.admin.vo.PointVO;
@Repository
public class APointDAO {
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	public List<PointVO> pointList(){
		return sqlSession.selectList("APointDAO.pointList");
	}
}
