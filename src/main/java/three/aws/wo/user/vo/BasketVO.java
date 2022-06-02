package three.aws.wo.user.vo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
public class BasketVO implements Serializable{
	private int b_seq;
	private String b_code;
	private String u_id;
	private String si_code;
	private String m_code;
	private int b_quantity;
	private String ob_code;
	private int b_single_price;
	private int b_total_price;
	
	// foreign key (menu table)
	private String m_img_file; //m_code 
	private String m_name;
	
	//foreign key (option_basic table)
	private String opb_code; //option basic code
	private String opb_name; 
	private int opb_price; 
	//foreign key (options table)
	private String op_code1; //option code
	private String op_name1; 
	private int op_price1; 
	private String op_code2; //option code
	private String op_name2; 
	private int op_price2; 
	private String op_code3; //option code
	private String op_name3; 
	private int op_price3;
	private String op_code4; //option code
	private String op_name4; 
	private int op_price4; 
	private String op_code5; //option code
	private String op_name5; 
	private int op_price5; 
	
	
	//foreign key (store_info table)
	private String si_name;
	private String si_loc;
	private String si_addr_road;
	private String si_addr_detail;
	
	private int m_seq;
	
	private String o_code;
	
}
