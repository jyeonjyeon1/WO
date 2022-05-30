package three.aws.wo.store.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import three.aws.wo.user.util.CriteriaStore;

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
	private String si_name;
	private String si_map_image;
	private String si_loc;
	private String si_image;
	private String si_image2;
	private String si_image3;
	private String si_holiday_imsi;
	private String si_holiday_fix;
	private int si_due_time;
	private String si_directions;
	private String si_code;
	private String si_address;
	private String si_addr_road;
	private String si_addr_detail;
	private boolean si_status;
	private boolean si_usestore;
	private String sa_business_registration_image;
	private String sa_bankbook_image;
	private String sa_rep_name;
	private String sa_acc_no;
	private String si_etc;
	private String si_wonsanji;
	
	private boolean si_Allday;
	private String si_openA;
	private String si_closeA;
	private String si_openW;
	private String si_closeW;
	private String si_openSat;
	private String si_closeSat;
	private String si_openSun;
	private String si_closeSun;
	private boolean si_holiday_gong;
	
	private CriteriaStore cri;
	
	
}