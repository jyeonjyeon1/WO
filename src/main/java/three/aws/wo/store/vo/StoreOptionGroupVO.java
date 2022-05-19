package three.aws.wo.store.vo;

import lombok.Data;

@Data
public class StoreOptionGroupVO {
	private int og_seq;
	private String og_code;
	private String og_name;
	private boolean og_ros;
	private boolean og_oos;
}
