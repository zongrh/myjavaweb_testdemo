package package4;

/**
 * FileName: Person
 * Author: nanzong
 * Date: 2019/7/16 11:30 PM
 * Description: 用户信息
 * History:
 */
public class Person {
    // 姓名
    private String name;
    // 年龄
    private int age;
    // 性别
    private String sex;
    // 住址
    private String add;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAdd() {
        return add;
    }

    public void setAdd(String add) {
        this.add = add;
    }
}