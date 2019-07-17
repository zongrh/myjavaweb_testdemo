package package10;

/**
 * FileName: Counter
 * Author: nanzong
 * Date: 2019/7/18 12:07 AM
 * Description:计数器
 * History:
 */
public class Counter {

    //次数
    private static int count = 0;

    //获取计数器值
    public int getCount() {
        return ++count;
    }
}
