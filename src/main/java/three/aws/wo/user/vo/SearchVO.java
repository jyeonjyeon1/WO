package three.aws.wo.user.vo;

import lombok.Getter;
import lombok.Setter;
import three.aws.wo.user.util.CriteriaStore;

@Getter
@Setter
public class SearchVO {
	String search;
	private CriteriaStore cri;
}
