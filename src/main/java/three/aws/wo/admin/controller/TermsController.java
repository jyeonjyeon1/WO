 package three.aws.wo.admin.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import three.aws.wo.admin.service.TermsService;
import three.aws.wo.admin.vo.TermsVO;

@Controller
public class TermsController {
   @Resource
   private TermsService termsService;

   @RequestMapping("/termOfService.user")
   public String termsList(TermsVO vo, Model model) {
      List<TermsVO> termsList = termsService.termsList();
      System.out.println(termsList);
      
      model.addAttribute("termsList" ,termsList);
      
      return "/info/info_termOfService";
   }
   
   @RequestMapping("/privacyTerm.user")
   public String infoList(TermsVO vo, Model model) {
      List<TermsVO> infoList = termsService.infoList();
      System.out.println(infoList);
      
      model.addAttribute("infoList" ,infoList);
      
      return "/info/info_privacyTerm";
   }
   
}