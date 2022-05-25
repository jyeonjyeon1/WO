package three.aws.wo.admin.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Component
public class RequestUtil {
	/**
	 * 매번 Method로 Request를 넘기는건 비효율적임에 따라 Spring 전역에서 사용 가능한 HttpServletRequest를 Utils로 불러온다.
	 */
	public static HttpServletRequest getHttpServletRequest() {
		return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
	}
	public static HttpServletResponse getHttpServletResponse() {
		return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getResponse();
	}
	
	public static HttpSession getSession() {
	    return RequestUtil.getHttpServletRequest().getSession(true);
	}
	
	public static void setAdminId(final String a_id) {
		RequestUtil.getSession().setAttribute("a_id",a_id);
	}
	public static String getAdminId(final String a_id) {
		return (String) RequestUtil.getSession().getAttribute("a_id");
	}
	public static void setAdminName(final String a_name) {
		RequestUtil.getSession().setAttribute("a_name",a_name);
	}
	public static String getAdminName(final String a_name) {
		return (String) RequestUtil.getSession().getAttribute("a_name");
	}
}
