package three.aws.wo.admin.vo;

import java.util.Date;

import lombok.Data;

@Data
public class QnAVO {
	private int qa_seq;
	private String u_id;
	private String u_name;
	private String u_tel;
	private String si_code;
	private String si_name;
	private String si_loc;
	private String qa_type;
	private String qa_title;
	private boolean qa_type_ans;
	private String qa_content_q;
	private String qa_content_a;
	private String qa_date_q;
	private String qa_date_a;

}
