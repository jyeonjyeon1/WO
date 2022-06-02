package three.aws.wo.admin.service;

import java.util.HashMap;
import java.util.List;

import three.aws.wo.admin.vo.AdminVO;
import three.aws.wo.admin.vo.FAQVO;
import three.aws.wo.admin.vo.NoticeVO;
import three.aws.wo.user.vo.OrdersVO;
import three.aws.wo.user.vo.UserVO;

public interface AdminService {
	int adminLogin(HashMap<String, String> param) throws Exception;
	String getAdminName(String a_name);
	int getNextNoticeSeq() throws Exception;
	void insertNotice(NoticeVO vo) throws Exception;
	List<NoticeVO> noticeList();
	NoticeVO oneNotice(int n_seq);
	void updateFaq(HashMap<String, Object> param);
	void deleteFaq(HashMap<String, Object> param);
	void insertFaq(FAQVO vo);
	AdminVO adminLoggin(String a_id);
	void deleteNotice(HashMap<String, Object> param);
	int dailySales();
	int monthlySales();
	int dailyReg();
	int dailyVisit();
	List<UserVO> visHisCount();
	List<OrdersVO> maxSalesStore();
}
