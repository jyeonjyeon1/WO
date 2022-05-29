package three.aws.wo.store.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.store.dao.StoreReviewDAO;
import three.aws.wo.store.vo.StoreReviewVO;

@Controller
public class StoreReviewController {
	
	@Autowired
	private StoreReviewDAO storeReviewDAO;
	
	@RequestMapping("/reviews.store")
	public String reviewlist(HttpSession session, Model model) {
		List<StoreReviewVO> reviewlist = storeReviewDAO.reviewlist();
		model.addAttribute("reviewlist", reviewlist);
		return "/reviews/reviews";
	}
	
	@RequestMapping("/reviewanswer.store")
	public String reviewanswer(StoreReviewVO vo) throws Exception {
		storeReviewDAO.reviewanswer(vo);
		return "redirect:/reviews.store";
	}
}