package three.aws.wo.admin.vo;

import java.util.Date;

import lombok.Data;

@Data
public class CouponVO {
	private String c_code;
	private String ct_code;
	private String c_nansu;
	private String c_startdate;
	private String c_enddate;
	private boolean c_used;
	private Date c_useddate;
	private String u_id;
	
	private String ct_seq;
	private String si_code;
	private String ct_name;
	private String ct_content;
	private boolean ct_type;
	private String ct_nansu;
	private String ct_startdate;
	private String ct_enddate;
	private Date ct_regdate;
	private boolean ct_discount_type;
	private int ct_day;
	private int ct_discount;
}
