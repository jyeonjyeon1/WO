package three.aws.wo.user.util;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;

@Component
public class SessionManager {
	public static final String SESSION_COOKIE = "u_id";
	private Map<String,Object> sessionStore = new ConcurrentHashMap();
	
	public void createSession(Object value, HttpServletResponse response) {
		//¼¼¼ÇÀ» ¸¸µê
		String session = "";
	}
	
}
