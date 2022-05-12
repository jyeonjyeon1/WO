package three.aws.wo.store.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class StoreVO {
	private String si_tel;
	private int si_seq;
	private String sa_password;
	private Date si_reg_date;
	private String si_referinfo;
	private String sa_email;
	private boolean si_parking_able;
	private String si_zipcode;
	private String si_open;
	private String si_name;
	private String si_map_image;
	private String si_loc;
	private String si_image;
	private String si_holiday_imsi;
	private String si_holiday_fix;
	private String si_due_time;
	private String si_directions;
	private String si_code;
	private String si_close;
	private String si_address;
	private String si_addr_road;
	private String si_addr_detail;
	private boolean si_status;
	private boolean si_usestore;
	private String sa_business_registration_image;
	private String sa_bankbook_image;
	private String sa_rep_name;
}
