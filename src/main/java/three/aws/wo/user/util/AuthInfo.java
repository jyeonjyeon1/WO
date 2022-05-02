package three.aws.wo.user.util;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

//회원 정보 세션 유지
@Getter
@Setter
@ToString
public class AuthInfo {
  
  private String u_id;
  private String u_name;
  private int u_grade;
  
  public AuthInfo(String u_id, String u_name, int u_grade) {
      this.u_id = u_id;
      this.u_name = u_name;
      this.u_grade = u_grade;
  }

}
