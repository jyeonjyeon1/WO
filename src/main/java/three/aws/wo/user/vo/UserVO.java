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
	private String u_email;
	private String u_birthday;
	private boolean u_sms_usable;		//문자 수신 동의
	private boolean u_email_usable;		//이메일 수신 동의
	private int u_point;				//보유 포인트
	private boolean u_status;			//활성 상태
	private Date u_regdate;
	private int u_grade;			//뭐하는 친구인지 설명 좀
	
	 //비밀번호 확인 어디에 쓰이는지? 이런건 VO 에서 하는거 아님!!
    public boolean matchPassword(String u_password) {
        return this.u_password.equals(u_password);
    }

}
