package three.aws.wo.admin.vo;

import java.util.Date;

import lombok.Data;
@Data
public class TermsVO {
	private String t_code;
	private String t_type;
	private String t_title;
	private String t_content;
	private Date t_regdate;
	private Date t_enfdate;
}
