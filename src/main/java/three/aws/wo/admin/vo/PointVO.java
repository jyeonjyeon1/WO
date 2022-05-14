package three.aws.wo.admin.vo;

import java.util.Date;

import lombok.Data;

@Data
public class PointVO {
	private int pt_seq;
	private String u_id;
	private String pt_regdate;
	private String pt_type;
	private String pt_description;
	private String pt_handler;
	private int pt_amount;
	
	private int u_point;
	private String u_name;
}
