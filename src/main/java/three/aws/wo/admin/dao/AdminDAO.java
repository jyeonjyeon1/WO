package three.aws.wo.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.admin.vo.AdminVO;
import three.aws.wo.admin.vo.FAQVO;
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
	public NoticeVO oneNotice(int n_seq) {
		return sqlSession.selectOne("AdminDAO.oneNotice",n_seq);
	}
	public void updateFaq(HashMap<String, Object> param) {
		sqlSession.update("AdminDAO.updateFaq",param);
	}
	public void deleteFaq(HashMap<String, Object> param) {
		sqlSession.delete("AdminDAO.deleteFaq",param);
	}
	public void insertFaq(FAQVO vo) {
		sqlSession.insert("AdminDAO.insertFaq", vo);
	}
	public AdminVO adminLoggin(String a_id) {
		return sqlSession.selectOne("AdminDAO.adminLoggin", a_id);
	}
	public void deleteNotice(HashMap<String, Object> param) {
		sqlSession.delete("AdminDAO.deleteNotice",param);
	}
}
