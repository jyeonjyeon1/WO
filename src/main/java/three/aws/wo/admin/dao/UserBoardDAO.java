package three.aws.wo.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import three.aws.wo.admin.vo.CouponVO;
import three.aws.wo.admin.vo.FAQVO;
import three.aws.wo.admin.vo.NoticeVO;
import three.aws.wo.admin.vo.QnAVO;
import three.aws.wo.store.vo.StoreVO;
@Repository
public class UserBoardDAO {
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
//	자주 묻는 질문 ////////////////////////////////////////
	
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
	
//	워킹오더 소식 ////////////////////////////////////////


	public List<NoticeVO> newsList() {
		return sqlSession.selectList("UserBoardDAO.newsList");
	}
	
	public List<NoticeVO> noticeList(){
		return sqlSession.selectList("UserBoardDAO.noticeList");
	}
	
	public List<NoticeVO> eventList() {
		return sqlSession.selectList("UserBoardDAO.eventList");
	}
	
//	1:1 문의 ////////////////////////////////////////


	
	//public List<QnAVO> myqnaList(String u_id) { return
	//sqlSession.selectList("UserBoardDAO.myqnaList", u_id); 
	//}
	 
	
	public List<QnAVO> myqnaList() {
		return sqlSession.selectList("UserBoardDAO.myqnaList");
	}
	
	
	public void addqna(QnAVO vo) {
		sqlSession.insert("UserBoardDAO.addqna", vo);
	}
	
	
	////////////////////////////////////////////////////////
	
	public void updateVisits(HashMap<String, Integer> param) {
		sqlSession.update("UserBoardDAO.updateVisits",param);		
	}
}
