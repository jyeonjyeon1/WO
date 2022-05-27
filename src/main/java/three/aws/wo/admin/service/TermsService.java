package three.aws.wo.admin.service;

import java.util.List;

import three.aws.wo.admin.vo.TermsVO;

public interface TermsService {
	List<TermsVO> termsList();
	List<TermsVO> infoList();
}
