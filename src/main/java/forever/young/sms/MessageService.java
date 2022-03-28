package forever.young.sms;

import java.util.HashMap;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class MessageService {
	public void sendMessage(String toNumber, String randomNumber) {
		String apiKey = "NCSRNVHBD2ISTLS8";// = "";
		String apiSecret = "R8HMOYOTINYZYMW7M9GYFIRL2VN92XRA";// = "";
		Message coolsms = new Message(apiKey, apiSecret);

		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", toNumber);
		params.put("from", "01095665544");
		params.put("type", "SMS");
		params.put("text", "[grabMe] 포에버영 인증번호 " + randomNumber + " 를 입력하세요.");
		params.put("app_version", "test app 1.2"); // application name and version

		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
	}

}
