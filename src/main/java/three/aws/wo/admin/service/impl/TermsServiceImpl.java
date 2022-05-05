package three.aws.wo.admin.service.impl;

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
	
}
