package three.aws.wo.user.vo;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewVO {
	private String ur_code;
	private String u_id;
	private String str_code;
	private Date ur_regdate;
	private int ur_star;
	private String ur_pic_url;
	private String ur_content;
	private String o_code;
	private boolean ur_open;
	private String ur_ans;
	
	private String o_list;
	private String o_list_detail;
	private String si_name;
	private String si_loc;

	private String dif_date;

}
