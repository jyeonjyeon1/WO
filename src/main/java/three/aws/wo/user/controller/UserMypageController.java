package three.aws.wo.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.admin.vo.PointVO;
import three.aws.wo.user.service.UserMypageService;
import three.aws.wo.user.vo.ReviewVO;
import three.aws.wo.user.vo.UserVO;

@Controller
public class UserMypageController {
	@Autowired
	private UserMypageService userMypageService;

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
		List<ReviewVO> reviewList = userMypageService.reviewList(u_id);
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
		userMypageService.insertReview(vo);
		System.out.println("리뷰 등록");
		return "redirect:/myReviewList.user";
	}
	
	@RequestMapping("/myPoint.user")
	public String userPointList(Model model, HttpSession session) {
		UserVO vo = (UserVO) session.getAttribute("userSession");
		if (vo == null) { // 이거는 나중에 interceptor에서 처리할 것
			return "/login/login_login";
		}
		String u_id = vo.getU_id();
		List<PointVO> userPointList = userMypageService.userPointList(u_id);
		System.out.println(userPointList);
		model.addAttribute("userPointList", userPointList);
		return "/mypage/mypage_myPoint";
	}
	
}