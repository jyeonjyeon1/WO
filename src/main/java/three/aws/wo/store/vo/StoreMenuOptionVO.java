package three.aws.wo.store.vo;

import lombok.Data;

@Data
public class StoreMenuOptionVO {
	private int op_seq;
	private String op_code;
	private String str_code;
	private String og_code;
	private boolean op_sel1;
	private String op_sel2;
	private String op_sel3;
	private boolean op_pum;

}
