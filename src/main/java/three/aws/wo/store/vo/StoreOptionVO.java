package three.aws.wo.store.vo;

import lombok.Data;

@Data
public class StoreOptionVO {
	private int op_seq;
	private String op_code;
	private int og_seq;
	private String si_code;
	private String op_name;
	private int op_price;
	private boolean op_oos;

}
