package three.aws.wo.user.util;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CriteriaStore {
	   
	   private int pageNum; // 페이지 번호
	   private int amount; // 페이지당 게시물 수
	   
	   public CriteriaStore() {
	      // 기본 생성자를 통해서 기본값 1페이지, 10개단위로 지정해서 처리
	      this(1, 10);
	   }

	   public CriteriaStore(int pageNum, int amount) {
	      super();
	      this.pageNum = pageNum;
	      this.amount = amount;
	   }
}