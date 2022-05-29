package three.aws.wo.admin.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import three.aws.wo.admin.dao.APageDAO;
import three.aws.wo.admin.service.APageService;
import three.aws.wo.admin.vo.BannerVO;
import three.aws.wo.user.vo.SearchKeywordVO;
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
	@Override
	public List<BannerVO> todayDrinkList() {
		return aPageDAO.todayDrinkList();
	}
	
	@Override
	public void deleteTodayDrink(int td_seq) {
		aPageDAO.deleteTodayDrink(td_seq);
	}
	@Override
	public void updateTodayDrink(HashMap<String, Object> param) {
		aPageDAO.updateTodayDrink(param);
	}
	@Override
	public void insertTodayDrink(HashMap<String, Object> param) {
		aPageDAO.insertTodayDrink(param);
	}
	@Override
	public List<SearchKeywordVO> searchKeywordList() {
		return aPageDAO.searchKeywordList();
	}
	@Override
	public int countSearchKeyword() {
		return aPageDAO.countSearchKeyword();
	}
	@Override
	public void insertKeyword(HashMap<String, Object> param) {
		aPageDAO.insertKeyword(param);
	}
	@Override
	public void updateKeyword(HashMap<String, Object> param) {
		aPageDAO.updateKeyword(param);
	}
	@Override
	public void deleteKeyword(HashMap<String, Object> param) {
		aPageDAO.deleteKeyword(param);
	}
}
