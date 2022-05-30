package three.aws.wo.user.vo;

import lombok.Getter;
import lombok.Setter;
import three.aws.wo.user.util.CriteriaStore;

@Getter
@Setter
public class SearchVO {
	private String search;
	private String searchType;
	private CriteriaStore criStore;
	
	private String parking;
	private String room;
	private String seat;
	private String groupseat;
	private String wifi;
	private String babyseat;
	private String disabled;
	private String pet;
	
}
