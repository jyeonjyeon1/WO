package three.aws.wo.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVO {
	private int u_seq;
	private String u_id;
	private String u_password;
	private String u_type;
	private String u_name;
	private String u_nickname;
	private String u_tel;
	private String u_info;
	private String u_email;
	private String u_birthday;
	private boolean u_sms_usable;		//문자 수신 동의
	private boolean u_email_usable;		//이메일 수신 동의
	private int u_point;				//보유 포인트
	private boolean u_status;			//활성 상태
	private Date u_regdate;
	private Date u_lastdate; 
	
	///
	private int vh_seq;
	private Date vh_time;
	private String vh_browser;
	private String vh_ip;
	

}
