package three.aws.wo.admin.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BannerVO {
	private int b_seq;
	private String b_code;
	private String e_code;
	private String b_title;
	private String b_memo;
	private String b_image;
	private String b_click_url;
	private Date b_regdate;
	private Date b_startdate;
	private Date b_enddate;
	private boolean b_settime;
	
	private String regdate;
	private String startdate;
	private String enddate;
	
	//today drink
	private int td_seq;
	private String td_name;
	private String td_content;
	private String td_image;
	private String td_url;
	
}
