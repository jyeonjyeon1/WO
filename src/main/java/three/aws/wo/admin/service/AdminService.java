package three.aws.wo.admin.service;

import java.util.HashMap;
import java.util.List;

import three.aws.wo.admin.vo.NoticeVO;

public interface AdminService {
	int adminLogin(HashMap<String, String> param) throws Exception;
	String getAdminName(String a_name);
	int getNextNoticeSeq() throws Exception;
	void insertNotice(NoticeVO vo) throws Exception;
	List<NoticeVO> noticeList();
	NoticeVO oneNotice(int n_seq);
}
