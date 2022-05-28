package three.aws.wo.admin.service;

import java.util.HashMap;
import java.util.List;

import three.aws.wo.admin.vo.BannerVO;

public interface APageService {

	List<BannerVO> bannerList();
	void deleteBanner(int b_seq);
	void updateBanner(HashMap<String, Object> param);
	void insertBanner(HashMap<String, Object> param);

}
