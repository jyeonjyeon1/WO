package three.aws.wo.admin.vo;

import java.util.Date;

import lombok.Data;

@Data
public class QnAVO {
	private String qa_code;
	private String u_id;
	private String str_code;
	private String qa_type;
	private String qa_title;
	private boolean qa_type_ans;
	private String qa_content_q;
	private String qa_content_a;
	private Date qa_date_q;
	private Date qa_date_a;

}
