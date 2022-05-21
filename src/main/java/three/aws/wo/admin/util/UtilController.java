package three.aws.wo.admin.util;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;

@Controller
public class UtilController {
	@Value("#{config['IAMPORT_API_KEY']}")
	private String iamport_api_key;
}
