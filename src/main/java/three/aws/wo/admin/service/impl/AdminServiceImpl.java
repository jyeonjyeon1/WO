package three.aws.wo.admin.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.admin.dao.AdminDAO;
import three.aws.wo.admin.service.AdminService;
import three.aws.wo.admin.vo.AdminVO;
import three.aws.wo.admin.vo.FAQVO;
import three.aws.wo.admin.vo.NoticeVO;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDAO adminDAO;
	
	@Override
	public int adminLogin(HashMap<String, String> param) throws Exception {
		return adminDAO.adminLogin(param);
	}

	@Override
	public String getAdminName(String a_name) {
		return adminDAO.getAdminName(a_name);
	}

	@Override
	public int getNextNoticeSeq() throws Exception {
		return adminDAO.getNextNoticeSeq();
	}

	@Override
	public void insertNotice(NoticeVO vo) throws Exception {
		adminDAO.insertNotice(vo);
	}

	@Override
	public List<NoticeVO> noticeList() {
		return adminDAO.noticeList();
	}

	@Override
	public NoticeVO oneNotice(int n_seq) {
		return adminDAO.oneNotice(n_seq);
	}
	@Override
	public void updateFaq(HashMap<String, Object> param) {
		adminDAO.updateFaq(param);
	}
	@Override
	public void deleteFaq(HashMap<String, Object> param) {
		adminDAO.deleteFaq(param);
	}
	@Override
	public void insertFaq(FAQVO vo) {
		adminDAO.insertFaq(vo);
	}
	@Override
	public AdminVO adminLoggin(String a_id) {
		return adminDAO.adminLoggin(a_id);
	}
	@Override
	public void deleteNotice(HashMap<String, Object> param) {
		adminDAO.deleteNotice(param);
	}
}
