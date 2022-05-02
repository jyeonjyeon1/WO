package three.aws.wo.user.util;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
 
@Entity
@Getter
@Setter
@ToString
public class LoginCommand {
    @Id
    @NotEmpty(message="아이디를 입력해주세요.")
    private String u_id;
 
    @NotEmpty(message="비밀번호를 입력해주세요.")
    private String u_password;
    private boolean rememberId;
    

}