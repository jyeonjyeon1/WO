package three.aws.wo.admin.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.admin.service.AReviewService;
import three.aws.wo.user.vo.ReviewVO;

@Controller
public class AdminReviewController {
	@Resource
	private AReviewService aReviewService;
	
	@RequestMapping("/review_mng.admin")
	public String reviewList(HttpSession session, ReviewVO vo, Model model) {
		List<ReviewVO> reviewList =aReviewService.reviewList();
		model.addAttribute("reviewList" ,reviewList);
		
		return "/board/review_mng";
	}
	
	
	@RequestMapping("/updateReview.admin")
	public String updateReview(ReviewVO vo) throws Exception {
		aReviewService.updateReview(vo);
		return "redirect:/review_mng.admin";
	}
	
}
