package package5;

import java.io.UnsupportedEncodingException;

/**
 * FileName: CharactorEncoding
 * Author: nanzong
 * Date: 2019/7/17 10:45 PM
 * Description:
 * History:
 */
public class CharactorEncoding {
    /**
     * 构造方法
     */
    public CharactorEncoding() {
    }

    /**
     * 对字符进行转码处理
     *
     * @param str 要转码的字符串
     * @return 编码后的字符串
     */
    public String toString(String str) {
        // 转换字符
        String text = "";
        // 判断要转码的字符串是否有效
        if (str != null && !"".equals(str)) {
            try {
                // 将字符串进行编码处理
                text = new String(str.getBytes("iso8859-1"), "GB18030");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        // 返回后的字符串
        return text;
    }
}