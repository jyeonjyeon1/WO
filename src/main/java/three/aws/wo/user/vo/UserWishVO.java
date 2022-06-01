package three.aws.wo.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import three.aws.wo.user.util.Criteria;

@Getter
@Setter
@ToString
public class UserWishVO {
	// 유저위시 리스트
	private int ls_seq;
	
	// 외래키
	private String u_id;
	private String si_code;
	private String si_name;
	private String si_loc;
	private String si_addr_road;
	private String si_tel;
	private String si_openA;
	private String si_closeA;
	private String si_image;
	private Criteria cri;
	
	
}
