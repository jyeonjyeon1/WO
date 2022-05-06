package three.aws.wo.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.admin.vo.FAQVO;
import three.aws.wo.admin.vo.NoticeVO;
@Repository
public class UserBoardDAO {
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
//	���� ���� ���� ////////////////////////////////////////
	
	public List<FAQVO> toptenList() {
		return sqlSession.selectList("UserBoardDAO.toptenList");
	}
	
	public List<FAQVO> orderfaqList() {
		return sqlSession.selectList("UserBoardDAO.orderfaqList");
	}
	
	public List<FAQVO> cancelfaqList() {
		return sqlSession.selectList("UserBoardDAO.cancelfaqList");
	}
	
	public List<FAQVO> userfaqList() {
		return sqlSession.selectList("UserBoardDAO.userfaqList");
	}
	
	public List<FAQVO> pointfaqList() {
		return sqlSession.selectList("UserBoardDAO.pointfaqList");
	}
	
	public List<FAQVO> etcfaqList() {
		return sqlSession.selectList("UserBoardDAO.etcfaqList");
	}
	
//	��ŷ���� �ҽ� ////////////////////////////////////////


	public List<NoticeVO> newsList() {
		return sqlSession.selectList("UserBoardDAO.newsList");
	}
	
	public List<NoticeVO> noticeList(){
		return sqlSession.selectList("UserBoardDAO.noticeList");
	}
	
	public List<NoticeVO> eventList() {
		return sqlSession.selectList("UserBoardDAO.eventList");
	}
	
}