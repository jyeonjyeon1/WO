package three.aws.wo.admin.util;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.Properties;

import org.apache.ibatis.io.Resources;
import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class MessageSend {
	private String api_key = "NCSWE7PH3DUSTKYL";
	private String api_secret;
	private String fromNum ="01027764122";
	String resource = "config/config.properties";
    
	
	public int sendSMS(String toNum, String content, String type) {
		Properties properties = new Properties();
		Reader reader;
		try {
			reader = Resources.getResourceAsReader(resource);
			properties.load(reader);
		} catch (IOException e1) {
			System.err.println("다른방법쓰자");
		}
		api_secret = properties.getProperty("SMS_SECRET_API_KEY");
		Message coolsms = new Message(api_key, api_secret);

		// 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", toNum);
		params.put("from", fromNum);
		params.put("type", type);
		params.put("text", content);
		params.put("app_version", "test app 1.2"); // application name and version

		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
			return 1;
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
			return 0;
		}
	}
	
	public int sendLMS(String toNum, String subject, String content) {
		Properties properties = new Properties();
		Reader reader;
		try {
			reader = Resources.getResourceAsReader(resource);
			properties.load(reader);
		} catch (IOException e1) {
			System.err.println("다른방법쓰자");
		}
		api_secret = properties.getProperty("SMS_SECRET_API_KEY");
		Message coolsms = new Message(api_key, api_secret);

		// 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", toNum);
		params.put("from", fromNum);
		params.put("type", "LMS");
		params.put("subject", subject);
		params.put("text", content);
		params.put("app_version", "test app 1.2"); // application name and version

		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
			return 1;
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
			return 0;
		}
	}
}
