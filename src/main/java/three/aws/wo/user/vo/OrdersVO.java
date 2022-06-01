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
	private String o_list;
	private boolean o_point_status;	//���ν� ��뿩��
	private String o_point;
	private String o_payment_list;	//���� ���
	private String o_request;		//��û����
	private int o_discount_price;	//���ε� �ݾ�
	private int o_total_price;		//�� �ݾ�
	private String o_order_state;	//�ֹ� ���� (�����Ϸ� ���� �غ� ��)
	private int o_daily_seq;		//�ֹ���ȣ ������ ����)
	private boolean o_payment_status;	//��������
	private boolean o_review;	//�������
	
	//�ܷ�
	private String u_name;
	private String u_tel;
	private String si_name;
	private String si_loc;
	
	private String o__date;

}
