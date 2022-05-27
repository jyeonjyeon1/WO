package three.aws.wo.store.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class StoreReviewVO {
	private String o_list_detail;
	private String u_nickname;
	private String ur_code;
	private String u_id;
	private String si_code;
	private String ur_regdate;
	private int ur_star;
	private String ur_pic_url;
	private String ur_content;
	private String o_code;
	private Boolean ur_open;
	private String ur_ans;
}