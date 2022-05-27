package three.aws.wo.store.vo;

import lombok.Data;

@Data
public class StoreMenuVO {
	private String m_code;
	private int m_seq;
	private String si_code;
	private boolean m_oos;
	private String mg_code;
	private String mg_name;
	private String m_name;
	private int m_price;
	private String m_img_file;
	private String m_pending_img;
	
	//for innerjoin
	private String si_name;
	private String si_loc;
	private String si_false;
	private String si_tel;
}
