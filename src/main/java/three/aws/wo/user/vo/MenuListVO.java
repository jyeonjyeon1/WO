package three.aws.wo.user.vo;

import lombok.Data;

@Data
public class MenuListVO {
	public int mg_seq;
	public String mg_name;
	public String mg_code;
	public String si_code;
	
	public int m_seq;
	public String m_code;
	public boolean m_oos;
	public String m_name;
	public String m_img_file;
	public String m_pending_img;
	public int ogb_seq;
	public String ogb_code;
	public int opb_seq;
	public String opb_code;
	public String opb_name;
	public int opb_price;
	
	public String og_code;
	public String og_name;
	public String op_code;
	public String op_name;
	public int op_price;
	
}
