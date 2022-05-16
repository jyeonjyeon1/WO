package three.aws.wo.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	
	
	
	@ResponseBody
	@RequestMapping(value = "/insertReview.user", method=RequestMethod.POST)
	public String insertReview(ReviewVO vo) { 
		System.out.println(vo);
		userReviewService.insertReview(vo);
		return "/mypage/mypage_myReviewList"; 
	}
	@RequestMapping("/myReview.user")
	public String tomyReviewPage() {
		System.out.println("myReview");
		return "/mypage/mypage_myReview";
	}

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("/insertReview.user", method=RequestMethod.POST) public
	 * String insertReview(HttpServletRequest request, ReviewVO vo) {
	 * 
	 * vo.setUr_star(Integer.parseInt(request.getParameter("rating")));
	 * vo.setUr_pic_url(request.getParameter("ur_pic_url"));
	 * vo.setUr_content(request.getParameter("ur_content"));
	 * userReviewService.insertReview(vo); return "/mypage_myReview"; }
	 */

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("/insertReview.user") public String insertReview( ReviewVO
	 * vo) { userReviewService.insertReview(vo); return "/mypage_myReview"; }
	 */

	/*
	 * @RequestMapping(value = "/insertReview.user", method = { RequestMethod.POST
	 * })
	 * 
	 * @ResponseBody public int m6(HttpServletRequest req, HttpServletResponse resp,
	 * HttpSession session, ReviewVO vo) { int result =
	 * userReviewService.insertReview(vo); return result; }
	 */
}