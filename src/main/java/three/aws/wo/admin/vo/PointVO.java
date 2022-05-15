package three.aws.wo.admin.vo;

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
	//user쪽 조인용
	private int u_point;
	private String u_name;
	//시스템 세팅
	private String point_use;
	private String point_percentage;
}
