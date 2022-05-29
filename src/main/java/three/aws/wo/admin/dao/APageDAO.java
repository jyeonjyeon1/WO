package three.aws.wo.admin.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import three.aws.wo.admin.vo.AdminVO;
import three.aws.wo.admin.vo.BannerVO;
import three.aws.wo.user.vo.SearchKeywordVO;

@Repository
public class APageDAO {

	@Inject
	private SqlSessionTemplate sqlSession;

	public List<BannerVO> bannerList() {
		return sqlSession.selectList("APageDAO.bannerList");
	}

	public void deleteBanner(int b_seq) {
		sqlSession.delete("APageDAO.deleteBanner",b_seq);
	}

	public void updateBanner(HashMap<String, Object> param) {
		sqlSession.update("APageDAO.updateBanner",param);
	}

	public void insertBanner(HashMap<String, Object> param) {
		sqlSession.insert("APageDAO.insertBanner",param);
	}

	public List<BannerVO> todayDrinkList() {
		return sqlSession.selectList("APageDAO.todayDrinkList");
	}

	public void deleteTodayDrink(int td_seq) {
		sqlSession.delete("APageDAO.deleteTodayDrink",td_seq);
	}

	public void updateTodayDrink(HashMap<String, Object> param) {
		sqlSession.update("APageDAO.updateTodayDrink",param);
	}

	public void insertTodayDrink(HashMap<String, Object> param) {
		sqlSession.insert("APageDAO.insertTodayDrink",param);
	}

	public List<SearchKeywordVO> searchKeywordList() {
		return sqlSession.selectList("APageDAO.searchKeywordList");
	}

	public int countSearchKeyword() {
		return sqlSession.selectOne("APageDAO.countSearchKeyword");
	}

	public void insertKeyword(HashMap<String, Object> param) {
		sqlSession.insert("APageDAO.insertKeyword",param);
	}

	public void updateKeyword(HashMap<String, Object> param) {
		sqlSession.update("APageDAO.updateKeyword",param);
	}

	public void deleteKeyword(HashMap<String, Object> param) {
		sqlSession.delete("APageDAO.deleteKeyword",param);
	}
    public List<AdminVO> docList() {
        return sqlSession.selectList("APageDAO.docList");
    }

    public void deleteDoc(int d_seq) {
        sqlSession.delete("APageDAO.deleteDoc",d_seq);
    }

    public void insertDoc(HashMap<String, String> param) {
        sqlSession.insert("APageDAO.insertDoc",param);
    }
}
