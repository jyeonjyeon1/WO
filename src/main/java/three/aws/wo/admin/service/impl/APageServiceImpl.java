package three.aws.wo.admin.service.impl;

import java.util.HashMap;
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
	@Override
	public void deleteBanner(int b_seq) {
		aPageDAO.deleteBanner(b_seq);
	}
	
	@Override
	public void updateBanner(HashMap<String, Object> param) {
		aPageDAO.updateBanner(param);
	}
	@Override
	public void insertBanner(HashMap<String, Object> param) {
		aPageDAO.insertBanner(param);
	}
	
}
