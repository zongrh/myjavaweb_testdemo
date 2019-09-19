package cn.hibernate;

/**
 * FileName: HelloWorld
 * Author: nanzong
 * Date: 2019/8/21
 * Description:
 * History:
 */
public class HelloWorld {
    public String sayHello(){
        return "Hello Maven";
    }

    public static void main(String[] args) {
        System.out.println(new HelloWorld().sayHello());
    }

}
