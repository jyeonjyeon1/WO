package three.aws.wo.admin.vo;

import java.util.Date;

import lombok.Data;

@Data
public class AdminVO {
	private int a_seq;
	private String a_id;
	private String a_password;
	private String a_name;
	
	//forms and documents
	private int d_seq;
	private String d_name;
	private String d_memo;
	private String d_file_name;
	private String d_file_url;
	private Date d_regdate;	
}
