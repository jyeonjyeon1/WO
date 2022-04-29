 package three.aws.wo.admin.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellRangeAddress;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import three.aws.wo.admin.service.AUserService;
import three.aws.wo.user.vo.UserVO;

@Controller
public class AdminUserController {
   @Resource
   private AUserService aUserService;

   @RequestMapping("/user_mng.admin")
   public String userList(UserVO vo, Model model) {
      List<UserVO> userList =aUserService.userList();
      System.out.println(userList);
      model.addAttribute("userList" ,userList);
      return "/user/user_mng";
   }
   
   //회원관리_엑셀 다운로드
   @GetMapping(value="/UserExcelDownload.admin")
   public void userExcelDownload(Model model, HttpServletResponse response, HttpServletRequest request) throws Exception{
      
      System.out.println("회원관리 엑셀다운시작한댱!");
      
      Workbook wb = new HSSFWorkbook(); // 엑셀파일 객체 생성
      Sheet sheet = wb.createSheet("회원관리"); //시트 생성 
      sheet.setDefaultColumnWidth(10); //셀 전체너비지정
      sheet.setColumnWidth(1, 3800); // 2열 너비지정
      sheet.setColumnWidth(3, 4500); // 4열 너비지정
      sheet.setColumnWidth(4, 4000); // 4열 너비지정
      sheet.setColumnWidth(5, 7000); // 4열 너비지정
      
        //================제목(1행)==================
        Row titleRow = sheet.createRow(0); //1행 
        int titleColNum = 0; //1열 
      Cell titleCell = titleRow.createCell(titleColNum); 
      titleCell.setCellValue("<회원관리>"); 
      titleRow.setHeight((short)600); // 행높이지정
      sheet.addMergedRegion(new CellRangeAddress(0,0,0,4)); // 셀 병합 (1열~5열) 

       //t_style
      CellStyle t_style = wb.createCellStyle(); 
      Font t_font = wb.createFont(); 
      
      t_font.setFontHeight((short)(20*22)); 
      t_font.setFontName("맑은 고딕");
      t_font.setBold(true);
      t_style.setAlignment(HorizontalAlignment.CENTER);
      t_style.setFont(t_font); 
      
      titleCell.setCellStyle(t_style); // 정리한 스타일들을 titleCell에 적용
      
      //================엑셀 조회 날짜(2행)==================
      Row dayRow = sheet.createRow(1); 
      int dayCol = 0;
      Cell dayCell = dayRow.createCell(dayCol);
      Date now = new Date();
      SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 mm월 dd일 HH:mm:ss");
      String nowTime = sdf.format(now);
      dayCell.setCellValue("조회날짜 : " + nowTime ); 
      sheet.addMergedRegion(new CellRangeAddress(1,1,0,4)); // 셀 병합 (1열~5열) 
      

      //================헤더(4행)==========================
      Row headerRow = sheet.createRow(3); //4행
      String[] header = {"번호", "아이디","유형", "이름", "번호", "이메일", "sns수신", "email수신", "상태" };
      Cell headerCell=null;
      
      //h_style
      CellStyle h_style = wb.createCellStyle();
      Font h_font = wb.createFont();
      h_font.setFontHeight((short)(14*16));
      h_style.setFont(h_font);
      h_style.setAlignment(HorizontalAlignment.CENTER);
      h_style.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.getIndex());
      h_style.setFillPattern(FillPatternType.SOLID_FOREGROUND);
      headerRow.setHeight((short)350);
      
      //1열 
      for(int i=0; i<header.length; i++) {
      headerCell = headerRow.createCell(i);   
      headerCell.setCellValue(header[i]);
      headerCell.setCellStyle(h_style);
      }
      

      //================데이터(5행)==========================
      int rowNum = 4; // 5행부터 데이터 삽입
      int cellNum = 0;
      Row dataRow = null; // for문을 돌려주기위해.
      Cell dataCell = null;
      
      //d_style1(가운데정렬) d_style2(왼쪽정렬)
      CellStyle d_style1 = wb.createCellStyle();
      CellStyle d_style2 = wb.createCellStyle();
      Font d_font = wb.createFont();
      d_font.setFontHeight((short)(14*16));
      d_style1.setFont(d_font);
      d_style2.setFont(d_font);
      d_style1.setAlignment(HorizontalAlignment.CENTER);
      d_style2.setAlignment(HorizontalAlignment.LEFT);
      

      List<UserVO> userList =aUserService.userList();
      System.out.println(userList.get(1).getU_type());
      

      for(int i = 0; i<userList.size(); i++) {
         cellNum = 0;
         dataRow = sheet.createRow(rowNum++); // for문 돌면서 행 1줄씩 추가

         dataCell = dataRow.createCell(cellNum); //번호
         dataCell.setCellValue(userList.get(i).getU_seq()); 
         dataCell.setCellStyle(d_style1);
         cellNum++;
         
         dataCell = dataRow.createCell(cellNum); //아이디 
         dataCell.setCellValue(userList.get(i).getU_id());
         dataCell.setCellStyle(d_style2);
         cellNum++;
         
         dataCell = dataRow.createCell(cellNum); //유형
         if(userList.get(i).getU_type().equals("normal")) {userList.get(i).setU_type("일반");}
         else if(userList.get(i).getU_type().equals("Google")) {userList.get(i).setU_type("구글");}
         else if(userList.get(i).getU_type().equals("KaKao")) {userList.get(i).setU_type("카카오");}
         else if(userList.get(i).getU_type().equals("Naver")) {userList.get(i).setU_type("네이버");}
         else {userList.get(i).setU_type("부잉");}
         dataCell.setCellValue(userList.get(i).getU_type()); 
         dataCell.setCellStyle(d_style1); 
         cellNum++;
         
         dataCell = dataRow.createCell(cellNum); //이름 
         dataCell.setCellValue(userList.get(i).getU_name()); 
         dataCell.setCellStyle(d_style2);
         cellNum++;
         
         dataCell = dataRow.createCell(cellNum); //번호
         dataCell.setCellValue(userList.get(i).getU_tel()); 
         dataCell.setCellStyle(d_style2);
         cellNum++;
         
         dataCell = dataRow.createCell(cellNum); //이메일
         dataCell.setCellValue(userList.get(i).getU_email()); 
         dataCell.setCellStyle(d_style2);
         cellNum++;
         
         dataCell = dataRow.createCell(cellNum); //sns 수신설정
         if(userList.get(i).isU_sms_usable()) dataCell.setCellValue("O");
         else dataCell.setCellValue("X");
         dataCell.setCellStyle(d_style1);
         cellNum++;
         
         dataCell = dataRow.createCell(cellNum); //email 수신설정
         if(userList.get(i).isU_email_usable()) dataCell.setCellValue("O");
         else dataCell.setCellValue("X");
         dataCell.setCellStyle(d_style1);
         cellNum++;
         
         dataCell = dataRow.createCell(cellNum); //활동상태 (넣어야할까 고민..!?) 
         if(userList.get(i).isU_status()) dataCell.setCellValue("활동");
         else dataCell.setCellValue("비활동");
         dataCell.setCellStyle(d_style1);
         cellNum++;
         
      }

   
      
      //총 회원수
      //u_style
      CellStyle u_style = wb.createCellStyle();
      Font u_font = wb.createFont();
      u_font.setFontHeight((short)(16*18));
      u_style.setFont(u_font);
      u_style.setAlignment(HorizontalAlignment.CENTER);
      u_style.setFillForegroundColor(IndexedColors.YELLOW.getIndex());
      u_style.setFillPattern(FillPatternType.SOLID_FOREGROUND);
      
      dataRow = sheet.createRow(rowNum++); 
      dataRow.setHeight((short)350);
      
      dataCell = dataRow.createCell(header.length-2);
      dataCell.setCellValue("총 회원");
      dataCell.setCellStyle(u_style);
      dataCell = dataRow.createCell(header.length-1);
      dataCell.setCellValue(userList.size() +"명"); 
      dataCell.setCellStyle(u_style);
      
       /* 엑셀 파일 생성 */
       response.setContentType("ms-vnd/excel");
       response.setHeader("Content-Disposition", "attachment;filename=userExcelDownload.xls");
       wb.write(response.getOutputStream());
       
   }
   
}