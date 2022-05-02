package three.aws.wo.user.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrdersVO {
	private int o_seq;
	private String o_code;
	private String u_id;	
	private String si_code;
	private Date o_order_date;
	private boolean o_coupon_status;
	private String c_code;
	private boolean o_point_status;
	private String o_point;
	private String o_payment_list;
	private String o_request;
	private int o_discount_price;
	private int o_total_price;
	private String o_order_state;

}
