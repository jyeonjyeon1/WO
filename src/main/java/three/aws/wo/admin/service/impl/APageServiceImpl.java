package three.aws.wo.admin.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import three.aws.wo.admin.dao.APageDAO;
import three.aws.wo.admin.service.APageService;
import three.aws.wo.admin.vo.BannerVO;
@Service
public class APageServiceImpl implements APageService {
	@Inject
	private APageDAO aPageDAO;

	@Override
	public List<BannerVO> bannerList() {
		return aPageDAO.bannerList();
	}
	
	
	
}
