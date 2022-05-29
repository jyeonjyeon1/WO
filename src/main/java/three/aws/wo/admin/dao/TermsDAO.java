package three.aws.wo.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.admin.vo.TermsVO;

@Repository
public class TermsDAO {
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	public List<TermsVO> termsList(){
		return sqlSession.selectList("TermsDAO.termsList");
	}
	
	public List<TermsVO> infoList(){
		return sqlSession.selectList("TermsDAO.infoList");
	}

}
