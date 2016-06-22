package first.common.util;

import java.util.UUID;

public class CommonUtils {
     
    public static String getRandomString(){
        return UUID.randomUUID().toString().replaceAll("-", "");
    }
}// DB를 생성할때 서버에 저장될 파일명은 32글자로 한다, getRandomString()메서드는 32글자의 랜덤한 문자열을 만들어서 반환해준다.
