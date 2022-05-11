package three.aws.wo.store.vo;

import java.util.Date;

import lombok.Data;

@Data
public class FranchiseVO {
	private int f_seq;
	private String f_code;
	private String f_name;
	private String f_tel;
	private String f_email;
	private String f_title;
	private String f_regdate;
	private boolean f_status;

}
