package three.aws.wo.store.vo;

import lombok.Data;

@Data
public class MenuAndOptionVO {
	private String si_code;
	private String si_loc;
	private String mg_code;
	private String mg_name;
	private String m_code;
	private String m_name;
	private boolean m_oos;
	private String m_img_file;
	private String og_code;
	private String og_name;
	private String op_code;
	private boolean og_ros;
	private String op_name;
	private int op_price;
	private boolean op_oos;
	private int m_seq;
	private int mg_seq;
	private int op_seq;
	private int og_seq;
}
