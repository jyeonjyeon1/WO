package three.aws.wo.user.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.user.service.UserService;


@Controller
public class UserPagingController {
	
	@Autowired
	private UserService userService;
	
	@ResponseBody
	@RequestMapping(value = "/pagingProcess.user", method=RequestMethod.POST)
	public int paging(@RequestParam("pageNum") int pageNum) {
		int startNum=0;
		startNum = pageNum*10 -9;
		System.out.println("pageNum : " + pageNum + "startNum : " + startNum);
		return startNum;
	}
}
