package three.aws.wo.user.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {
	private String ur_code;
	private String u_id;
	private String str_code;
	private Date ur_regdate;
	private float ur_star;
	private String ur_pic_url;
	private String ur_content;
	private String o_code;
	private boolean ur_open;
	private String ur_ans;

}
