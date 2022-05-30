package three.aws.wo.admin.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.admin.dao.TermsDAO;
import three.aws.wo.admin.service.TermsService;
import three.aws.wo.admin.vo.TermsVO;

@Service
public class TermsServiceImpl implements TermsService{
	@Autowired
	private  TermsDAO termsDAO;
	
	@Override
	public List<TermsVO> termsList() {
		return termsDAO.termsList();
	}
	
	@Override
	public List<TermsVO> infoList() {
		return termsDAO.infoList();
	}
	
	@Override
	public TermsVO termsOne(String t_code) {
		return termsDAO.termsOne(t_code);
	}
	
	@Override
	public void updateTerms(HashMap<String, Object> map) {
		termsDAO.updateTerms(map);
	}
	
	@Override
	public int tCodeMax() {
		return termsDAO.tCodeMax();
	}
	
	@Override 
	public TermsVO infoOne(String t_code) {
		return termsDAO.infoOne(t_code);
	}
	
	@Override
	public int tPolicyCodeMax() {
		return termsDAO.tPolicyCodeMax();
	}
	
	@Override
	public void insertPolicy(HashMap<String, Object> map) {
		termsDAO.insertPolicy(map);
	}
	
	@Override
	public void deletePol(String t_code) {
		termsDAO.deletePol(t_code);
	}
	
}
