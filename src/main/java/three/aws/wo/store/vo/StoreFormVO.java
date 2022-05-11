package three.aws.wo.store.vo;

import lombok.Data;

@Data
public class StoreFormVO {
	private int sf_seq;
	private String sf_code;
	private String sf_name;
	private String sf_reg_date;
	private String sf_loc;
	private String sf_zipcode;
	private String sf_address;
	private String sf_addr_road;
	private String sf_addr_detail;
	private String sf_tel;
	private boolean sf_parking_able;
	private String sf_due_time;
	private String sf_holiday_fix;
	private String sf_holiday_imsi;
	private String sf_open;
	private String sf_close;
	private String sf_referinfo;
	private String sf_map_image;
	private String sf_directions;
	private String sf_image;
	private String sf_status;
	private boolean sf_usestore;
	private String sf_email;
	private String sf_acc_no;
	private String sf_bankbook_image;
	private String sf_business_registration_image;

}
