package package7;

/**
 * FileName: Convert
 * Author: nanzong
 * Date: 2019/7/17 11:16 PM
 * Description: 转换数组的javabean
 * History:
 */
public class Convert {
    public String arr2Str(String[] arr) {
        // 实例化StringBuffer
        StringBuffer sb = new StringBuffer();
        // 判断arr是否为有效数组
        if (arr != null && arr.length > 0) {
            for (String s : arr) {
                // 将字符串追加到StringBuffer中
                sb.append(s);
                // 将字符串追加到StringBuffer中
                sb.append(",");
            }
            // 判断字符串长度是否有效
            if (sb.length() > 0) {
                // 截取字符
                sb = sb.deleteCharAt(sb.length() - 1);
            }
        }
        // 返回字符串
        return sb.toString();
    }

}
