package three.aws.wo.admin.dao;

import java.util.HashMap;
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
	
	public TermsVO termsOne(String t_code) {
		return sqlSession.selectOne("TermsDAO.termsOne",t_code);
	}
	
	public void updateTerms(HashMap<String, Object> map) {
		sqlSession.update("TermsDAO.updateTerms", map);
	}
	
	public int tCodeMax() {
		return sqlSession.selectOne("TermsDAO.tCodeMax");
	}
	
	public TermsVO infoOne(String t_code) {
		return sqlSession.selectOne("TermsDAO.infoOne",t_code);
	}
	
	public int tPolicyCodeMax() {
		return sqlSession.selectOne("TermsDAO.tPolicyCodeMax");
	}
	
	public void insertPolicy(HashMap<String, Object> map) {
		sqlSession.insert("TermsDAO.insertPolicy", map);
	}
	
	public void deletePol(String t_code) {
		sqlSession.delete("TermsDAO.deletePol",t_code);
	}
	
	
}
