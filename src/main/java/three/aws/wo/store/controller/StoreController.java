package three.aws.wo.store.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StoreController {
//	==================== inc ============================
	@GetMapping("/footer.store")
	public String tofooterPage() {
		System.out.println("store footer");
		return "/inc/footer";
	}

	@GetMapping("/header.store")
	public String toheaderPage() {
		System.out.println("store header");
		return "/inc/header";
	}
	
	@GetMapping("/aside.store")
	public String toasidePage() {
		System.out.println("store aside");
		return "/inc/aside";
	}
	
	

//	==================== index ============================
//	@GetMapping("/index.store")
//	public String toindexPage() {
//		System.out.println("store index");
//		return "/index";
//	}
	
	@GetMapping("/login.store")
	public String tologinPage() {
		System.out.println("store login");
		return "/login";
	}


//==================== info ============================
//	@GetMapping("/basic.store")
//	public String toBasicPage() {
//		System.out.println("store info_basic");
//		return "/info/info_basic";
//	}
	
	@GetMapping("/manage.store")
	public String toManagePage() {
		System.out.println("store info_manage");
		return "/info/info_manage";
	}
	
//====================menu  ============================
//	@GetMapping("/CRUD.store")
//	public String toCRUDPage() {
//		System.out.println("store menu_crud");
//		return "/menu/menu_crud";
//	}
	
//	@GetMapping("/pumjeol.store")
//	public String toPumjeolPage() {
//		System.out.println("store menu_pumjeol");
//		return "/menu/menu_pumjeol";
//	}
	
//====================order  ============================
		@GetMapping("/Ooneday.store")
		public String toOOnedayPage() {
			System.out.println("store lastOrder_oneday");
			return "/order/lastOrder_oneday";
		}
		
		@GetMapping("/Operiod.store")
		public String toOPeriodPage() {
			System.out.println("store lastOrder_peroid");
			return "/order/lastOrder_period";
		}
		
	//====================reviews  ============================
	@GetMapping("/reviews.store")
	public String toReviewsPage() {
		System.out.println("store reviews");
		return "/reviews/reviews";
	}	
	
	//====================statistics  ============================
	@GetMapping("/SPeriod.store")
	public String toSOnedayPage() {
		System.out.println("store statistics_period");
		return "/statistics/statistics_period";
	}
	
	@GetMapping("/SOneday.store")
	public String toPeriodPage() {
		System.out.println("store statistics_oneday");
		return "/statistics/statistics_oneday";
	}
	
	@GetMapping("/test.store")
	public String toTestPage() {
		System.out.println("store test");
		return "/menu/test";
	}
		
}
