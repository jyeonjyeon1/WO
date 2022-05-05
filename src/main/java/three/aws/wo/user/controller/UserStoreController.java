package three.aws.wo.user.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.maven.shared.invoker.SystemOutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.user.service.UStoreService;
import three.aws.wo.store.vo.StoreVO;

@Controller
public class UserStoreController {
	@Resource
	private UStoreService uStoreService;
	
	@RequestMapping("/storeList.user")
	public String storeList(StoreVO vo, Model model) {
		List<StoreVO> storeListByPage =uStoreService.storeListByPage();
		System.out.println("user에서 storelist 열었다!");
		model.addAttribute("storeListByPage" ,storeListByPage);
		return "/order/order_storeList";
	}
	
	@ResponseBody
	@RequestMapping(value = "/pagingProecess.user", method = RequestMethod.POST)
	public int UserPaging(int pageNum) {
		System.out.println("dd");
		int startPageNum = (pageNum*10) - 9;
		System.out.println("PageNum:" + pageNum + ", startPageNum: " + startPageNum);

		return startPageNum;
	}
	
}