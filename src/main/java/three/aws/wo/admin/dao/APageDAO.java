package three.aws.wo.admin.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import three.aws.wo.admin.vo.BannerVO;

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
}
