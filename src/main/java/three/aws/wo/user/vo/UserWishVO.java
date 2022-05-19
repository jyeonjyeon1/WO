package three.aws.wo.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserWishVO {
	// 유저위시 리스트
	private int ls_seq;
	
	// 외래키
	private String u_id;
	private String si_code;
	
}
