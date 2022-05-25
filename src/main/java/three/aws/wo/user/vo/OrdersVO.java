package three.aws.wo.user.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrdersVO {
	private int o_seq;
	private String o_code;
	private String u_id;	
	private String si_code;
	private String o_order_date;
	private boolean o_coupon_status;
	private String c_code;
	private String o_list;
	private boolean o_point_status;	//포인스 사용여부
	private String o_point;
	private String o_payment_list;	//결제 방법
	private String o_request;		//요청사항
	private int o_discount_price;	//할인된 금액
	private int o_total_price;		//총 금액
	private String o_order_state;	//주문 상태 (결제완료 접수 준비 등)
	private int o_daily_seq;		//주문번호 생성을 위함)
	private boolean o_payment_status;	//결제성태
	
	//외래
	private String u_name;
	private String u_tel;
	private String si_name;

}
