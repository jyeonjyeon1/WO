package three.aws.wo.admin.service;

import java.util.HashMap;
import java.util.List;

import three.aws.wo.admin.vo.TermsVO;

public interface TermsService {
	List<TermsVO> termsList();
	List<TermsVO> infoList();
	TermsVO termsOne(String t_code);
	void updateTerms(HashMap<String, Object> map);
	int tCodeMax();
	TermsVO infoOne(String t_code);
	int tPolicyCodeMax();
	void insertPolicy(HashMap<String, Object> map);
	void deletePol(String t_code);
	
}

