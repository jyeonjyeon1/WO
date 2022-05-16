package three.aws.wo.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.user.service.UserReviewService;
import three.aws.wo.user.vo.ReviewVO;
import three.aws.wo.user.vo.UserVO;

@Controller
public class UserReviewController {
	@Autowired
	private UserReviewService userReviewService;

	@RequestMapping("/myReviewList.user")
	public String reviewList(ReviewVO vo, Model model, HttpSession session) {
		
		String u_id = "";
		UserVO uv = (UserVO) session.getAttribute("userSession");
		if(uv == null) {
			u_id = "No_Data";
		}
		else if (uv != null) {
			u_id = uv.getU_id();
		}
		List<ReviewVO> reviewList = userReviewService.reviewList(u_id);
		model.addAttribute("reviewList" ,reviewList);
		
		return "/mypage/mypage_myReviewList";
	}
	
	
	@RequestMapping("/myReview.user")
	public String insertReview(Model model,HttpServletRequest request) throws Exception {
		String o_code = request.getParameter("order");
		System.out.println("mypage_myReview");
		model.addAttribute("getOrderCode", o_code);
		return "/mypage/mypage_myReview";
	}
	
	
	@RequestMapping("/insertReview.user")
	public String insertNotice(ReviewVO vo) throws Exception {
		userReviewService.insertReview(vo);
		System.out.println("¸®ºä µî·Ï");
		return "redirect:/myReviewList.user";
	}
	
}