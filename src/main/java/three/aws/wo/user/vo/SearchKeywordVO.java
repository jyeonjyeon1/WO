package three.aws.wo.user.vo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
public class SearchKeywordVO implements Serializable {
	private int sb_seq;
	private String sb_keyword;
	private String sb_url;
}
