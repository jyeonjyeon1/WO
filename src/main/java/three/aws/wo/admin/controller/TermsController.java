 package three.aws.wo.admin.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import three.aws.wo.admin.service.TermsService;
import three.aws.wo.admin.vo.TermsVO;
import three.aws.wo.store.vo.StoreVO;

@Controller
public class TermsController {
   @Resource
   private TermsService termsService;

   @RequestMapping("/termOfService.user")
   public String termsList(TermsVO vo, Model model) {
      List<TermsVO> termsList = termsService.termsList();
      System.out.println(termsList);
      
      model.addAttribute("termsLists" ,termsList);
      
      return "/info/info_termOfService";
   }
   
   @RequestMapping("/privacyTerm.user")
   public String infoList(TermsVO vo, Model model) {
      List<TermsVO> infoList = termsService.infoList();
      System.out.println(infoList);
      
      model.addAttribute("infoList" ,infoList);
      
      return "/info/info_privacyTerm";
   }
   
   @RequestMapping("/terms_mng.admin")
   public String toterms_mng(TermsVO vo, Model model) {
	   List<TermsVO> termsList = termsService.termsList();
	   System.out.println(termsList);
	      
	   model.addAttribute("AtermsList" ,termsList);
      
      return "/page/terms_mng";
   }
   
   @GetMapping("/terms_update.admin")
   public String toterms_update(HttpServletRequest request, Model model) {
	   String t_code = request.getParameter("t_code");
	   System.out.println(t_code);
	   
	   
	   if (t_code == null) {
			return "/page/terms_mng";
		} else {
			TermsVO vo = termsService.termsOne(t_code);
			System.out.println(vo);
			model.addAttribute("termsOne", vo);
			return "/page/terms_update";
		} 
	  
   }
   
   @ResponseBody
   @RequestMapping(value="/updateTerms.admin", method = RequestMethod.POST)
   public int updateTerms(@RequestBody HashMap<String, String > param, TermsVO vo ) throws ParseException {
	   
	   String t_code = param.get("t_code");
	   String t_title = param.get("t_title");
	   String t_content = param.get("t_content");
	   String t_regdate_input = param.get("t_regdate");
	   String t_enfdate_input = param.get("t_enfdate");
	   String t_type = "term";
	   
	   SimpleDateFormat fo = new SimpleDateFormat("yyyy-MM-dd");
	   
	   Date t_regdate = fo.parse(t_regdate_input);
	   Date t_enfdate = fo.parse(t_enfdate_input);
	   
	   
	   HashMap<String, Object> map = new HashMap<String, Object>();
	   map.put("t_type", t_type);
	   map.put("t_code", t_code);
	   map.put("t_title", t_title);
	   map.put("t_content", t_content);
	   map.put("t_regdate", t_regdate);
	   map.put("t_enfdate", t_enfdate);
	   
	   termsService.updateTerms(map);
	   
	      
	   
      return 1;
   }
   
   @GetMapping("/terms_add.admin")
	public String toterms_add(Model model) {
	   
	   int current_max_code = termsService.tCodeMax();
		System.out.println(current_max_code);
	
		model.addAttribute("current_max_code",current_max_code);
		
		return "/page/terms_add";
	}
   
   

	
	
	@GetMapping("/policy_mng.admin")
	public String topolicy_mng(TermsVO vo, Model model) {
		
		
		List<TermsVO> policyList = termsService.infoList();
	    
	      model.addAttribute("policyList" ,policyList);
		
		return "/page/policy_mng";
	}
	
	

	 
	 
	
	@GetMapping("/policy_update.admin")
	public String topolicy_update(HttpServletRequest request, Model model) {
		String t_code = request.getParameter("t_code");
		System.out.println(t_code);
		
		List<TermsVO> policyList = termsService.infoList();
		   
		   
		   if (t_code == null) {
				return "/page/policy_mng";
			} else {
				TermsVO vo = termsService.infoOne(t_code);
				System.out.println(vo);
				model.addAttribute("infoOne", vo);
				return "/page/policy_update";
			} 
		
	
	}
   
	
	@GetMapping("/policy_add.admin")
	public String topolicy_add() {
		
		
		System.out.println("policy_add");
		
		
		return "/page/policy_add";
	}
  
   
  

   


   
}