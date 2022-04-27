package three.aws.wo.admin.util;

import java.util.HashMap;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class SendTextMessage {
	public static void main(String[] args) {
		String api_key = "NCSWE7PH3DUSTKYL";
		String api_secret = "NZKJLXJYUTDZIAC9KLTQB2GYZWZUMZAG";
		String send_tel = "01027764122";
		Message coolsms = new Message(api_key, api_secret);

		// 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", "01084888650");
		params.put("from", send_tel);
		params.put("type", "SMS");
		params.put("text", "WalkingOrder ÆÄ¿ö");
		params.put("app_version", "test app 1.2"); // application name and version

		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
	}
}