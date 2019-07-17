package package9;

/**
 * FileName: User
 * Author: nanzong
 * Date: 2019/7/17 11:48 PM
 * Description: 用户
 * History:
 */
public class User {
    // 用户名
    private String name;
    // 密码
    private String password;
    // qq号码
    private String qq;
    // E-Mail地址
    private String mail;
    // 性别
    private String sex;

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getQq() {
        return qq;
    }
    public void setQq(String qq) {
        this.qq = qq;
    }
    public String getMail() {
        return mail;
    }
    public void setMail(String mail) {
        this.mail = mail;
    }
    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex;
    }
}
