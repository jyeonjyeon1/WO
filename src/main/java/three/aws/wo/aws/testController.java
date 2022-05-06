package three.aws.wo.aws;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class testController {
	@RequestMapping(value="/testPro.user", method=RequestMethod.POST)
	public String testPro(testVO td) throws SQLException, Exception {
		System.out.println(td.getTest1());
		System.out.println(td.getTest2());
		ArrayList fileNames = FileManagement.FileUploader(td.getTest3());
		return "/login/test";
	}
}
