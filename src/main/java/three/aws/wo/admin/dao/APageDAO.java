package three.aws.wo.admin.dao;

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
}
