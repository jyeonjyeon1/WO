package three.aws.wo.admin.service;

import java.util.HashMap;
import java.util.List;

import three.aws.wo.admin.vo.FAQVO;
import three.aws.wo.admin.vo.NoticeVO;
import three.aws.wo.admin.vo.QnAVO;

public interface FaqService {


	List<FAQVO> toptenList();
	List<FAQVO> faqList();
//	List<FAQVO> cancelfaqList();
//	List<FAQVO> userfaqList();
//	List<FAQVO> pointfaqList();
//	List<FAQVO> etcfaqList();


	
	List<NoticeVO> newsList();
//	List<NoticeVO> noticeList();
//	List<NoticeVO> eventList();
	
//	user 1:1 
	
	List<QnAVO> myqnaList(String u_id);
	void addqna(QnAVO vo) throws Exception;
	
//	admin 1:1 
	
	List<QnAVO> adminqnaList();
	
	List<QnAVO> adminanswerList(int qa_seq);
	
	void addadminqna(QnAVO vo) throws Exception;
	void addanswer(QnAVO vo) throws Exception;
	
	void updateVisits(HashMap<String, Integer> param);
	NoticeVO eventCHK(int eventNum);
}
