package three.aws.wo.aws;

import java.io.File;

public class Main {

    public AwsS3 awsS3 = AwsS3.getInstance();

    public static void main(String[] args) {

        Main main = new Main();

        File file = new File("D://KakaoTalk_20220106_140903304.jpg");
        String key = "img/my-img.png";
        String copyKey = "img/my-img-copy.png";

        main.upload(file, key);
//        main.copy(key, copyKey);
//        main.delete(key);
    }

    public void upload(File file, String key) {
        awsS3.upload(file, key);
    }

    public void copy(String orgKey, String copyKey) {
        awsS3.copy(orgKey, copyKey);
    }

    public void delete(String key) {
        awsS3.delete(key);
    }

}
