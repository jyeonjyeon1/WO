package three.aws.wo.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.admin.dao.UserBoardDAO;
import three.aws.wo.admin.service.FaqService;
import three.aws.wo.admin.vo.FAQVO;
import three.aws.wo.admin.vo.NoticeVO;

@Service
public class FaqServiceImpl implements FaqService {

	@Autowired 
	private UserBoardDAO userBoardDAO;
	
//	자주 묻는 질문 ////////////////////////////////////////

	
	@Override
	public List<FAQVO> toptenList() {
		
		return userBoardDAO.toptenList();
	}
	
	@Override
	public List<FAQVO> orderfaqList() {
		
		return userBoardDAO.orderfaqList();
	}
	
	
	@Override
	public List<FAQVO> cancelfaqList() {
		
		return userBoardDAO.cancelfaqList();
	}
	
	@Override
	public List<FAQVO> userfaqList() {
		
		return userBoardDAO.userfaqList();
	}
	
	@Override
	public List<FAQVO> pointfaqList() {
		
		return userBoardDAO.pointfaqList();
	}
	
	@Override
	public List<FAQVO> etcfaqList() {
		
		return userBoardDAO.etcfaqList();
	}
	
	
//	워킹오더 소식 ////////////////////////////////////////
	
	@Override
	public List<NoticeVO> newsList() {
		
		return userBoardDAO.newsList();
	}
	
	@Override
	public List<NoticeVO> noticeList() {
		
		return userBoardDAO.noticeList();
	}
	
	@Override
	public List<NoticeVO> eventList() {
		
		return userBoardDAO.eventList();
	}

	
}
