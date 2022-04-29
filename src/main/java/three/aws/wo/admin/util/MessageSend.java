package three.aws.wo.admin.util;

import java.util.HashMap;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class MessageSend {
	private String api_key = "NCSWE7PH3DUSTKYL";
	private String api_secret = "NZKJLXJYUTDZIAC9KLTQB2GYZWZUMZAG";
	private String fromNum ="01027764122";
	
	public int sendSMS(String toNum, String content, String type) {
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
}
