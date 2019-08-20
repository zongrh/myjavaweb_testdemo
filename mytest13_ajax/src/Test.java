/**
 * FileName: Test
 * Author: nanzong
 * Date: 2019/8/1
 * Description:
 * History:
 */
public class Test {
    public static void main(String[] args) {
        getCount();
    }


    static String string="";
    private static void getCount() {
        for (int i = 0; i < 20; i++) {
            string += String.valueOf((int) (Math.random() * 10));
            System.out.println("----item1--- " + string);

        }

        for (int i = 0; i < 20; i++) {
            string += String.valueOf((int) (Math.random() * 10));
            System.out.println("----item2--- " + string);

        }
        System.out.println("----string--- " + string);
    }
}
