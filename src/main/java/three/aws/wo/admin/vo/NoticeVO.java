package three.aws.wo.admin.vo;

import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString
public class NoticeVO {
	private int n_seq;
	private String n_code;
	private String n_title;
	private String n_content;
	private Date n_regdate;
	private boolean n_fix;
	private boolean n_status;
	private String n_type;
	private String n_pic_url;
	private String n_file_url;
	private Date n_enddate;
}
