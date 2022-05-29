package three.aws.wo.admin.service;

import java.util.HashMap;
import java.util.List;

import three.aws.wo.admin.vo.BannerVO;
import three.aws.wo.user.vo.SearchKeywordVO;

public interface APageService {

	List<BannerVO> bannerList();
	void deleteBanner(int b_seq);
	void updateBanner(HashMap<String, Object> param);
	void insertBanner(HashMap<String, Object> param);
	List<BannerVO> todayDrinkList();
	void deleteTodayDrink(int td_seq);
	void updateTodayDrink(HashMap<String, Object> param);
	void insertTodayDrink(HashMap<String, Object> param);
	List<SearchKeywordVO> searchKeywordList();
	int countSearchKeyword();
	void insertKeyword(HashMap<String, Object> param);
	void updateKeyword(HashMap<String, Object> param);
	void deleteKeyword(HashMap<String, Object> param);

}
