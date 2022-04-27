package three.aws.wo.admin.vo;

import lombok.Data;

@Data
public class CouponVO {
	private int c_code;
	private String c_name;
	private String c_startdate;
	private String c_enddate;
	private boolean c_discount_p;
	private String c_discount_m;
	private String c_use;
	private boolean c_useddate;
	private String c_used_store;
	private String c_id;

}
