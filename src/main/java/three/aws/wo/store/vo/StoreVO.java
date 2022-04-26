package three.aws.wo.store.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class StoreVO {
	private String str_tel;
	private int str_seq;
	private Date str_reg_date;
	private String str_referinfo;
	private String str_email;
	private boolean str_parking;
	private String str_zipcode;
	private String str_open;
	private String str_name;
	private String str_map_image;
	private String str_loc;
	private String str_image;
	private String str_holiday_imsi;
	private String str_holiday_fix;
	private String str_due_time;
	private String str_directions;
	private String str_code;
	private String str_close;
	private String str_address;
	private String str_addr_road;
	private String str_addr_detail;
	private boolean str_status;
	private boolean str_usestore;
}
