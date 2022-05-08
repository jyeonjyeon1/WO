package three.aws.wo.aws;

import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;

public class AwsS3 {
	private AmazonS3 s3Client;

	final private String accessKey = "IW 에서 만든 액세스 키";
	final private String secretKey = "I/W4 에서 받은 시크릿 액세스 키";// ( 분실시 액세스키 재발급 받아야한니다，)
	private Regions clientRegion = Regions.AP_NORTHEAST_2;
	private String bucket = "thisisthat";

//	private AwsS3() {
//		createS3Client();
//	}
//
//	II singleton pattern
//	static private AwsS3 instance = null;
//	public static AwsS3 getlnstancef)
//	{
//	if (instance == null) { return new AwsS3();
//	} else {
//	return instance;
//	// ■、. S3 client 생성
//	private void!
//
//	createSBClient () {
//		AWSCrederrtials credentials = new BasicAWSCrederrtials'accessKeyj secretKey);
//				this、s3Client = AmazonS3〔lientBuilder、standard()、withCredentials(new AWSStaticCredentiaIsProvider(credentials)) 、withRegion(clientRegion)，build();
//	}
}
