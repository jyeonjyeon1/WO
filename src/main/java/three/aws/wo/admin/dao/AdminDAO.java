package three.aws.wo.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.admin.vo.NoticeVO;

@Repository
public class AdminDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int adminLogin(HashMap<String, String> param) {
		return sqlSession.selectOne("AdminDAO.adminLogin",param);
	}
	public String getAdminName(String a_id) {
		return sqlSession.selectOne("AdminDAO.getAdminName",a_id);
	}
	
	public int getNextNoticeSeq() {
		return sqlSession.selectOne("AdminDAO.getNextNoticeSeq");
	}
	
	public void insertNotice(NoticeVO vo) {
		sqlSession.insert("AdminDAO.insertNotice", vo);
	}
	
	public List<NoticeVO> noticeList(){
		return sqlSession.selectList("AdminDAO.noticeList");
	}
}
