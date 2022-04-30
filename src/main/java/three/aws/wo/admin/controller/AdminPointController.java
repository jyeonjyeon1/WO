package three.aws.wo.admin.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.admin.service.APointService;
import three.aws.wo.admin.vo.PointVO;

@Controller
public class AdminPointController {
	@Resource
	private APointService aPointService;
	
	@RequestMapping("/point_mng.admin")
	public String pointList(PointVO vo, Model model) {
		List<PointVO> pointList =aPointService.pointList();
		System.out.println(pointList);
		model.addAttribute("pointList" ,pointList);
		return "/user/point_mng";
	}
}
