package three.aws.wo.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewVO {
	private int ur_seq;
	private String u_id;
	private String u_name;
	private String u_tel;
	private String str_code;
	private String ur_regdate;
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
	private int o_total_price;

	private String dif_date;

}
