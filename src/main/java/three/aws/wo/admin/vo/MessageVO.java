package three.aws.wo.admin.vo;

import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MessageVO {
	private int sms_seq;
	private String sms_toNum;
	private String sms_type;
	private boolean sms_ad; //default false;
	private String sms_text;
	private String sms_size;
	private Date sms_sendTime;
	private boolean sms_result;
}
