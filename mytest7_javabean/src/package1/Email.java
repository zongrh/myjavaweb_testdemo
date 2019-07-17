package package1;

import java.io.Serializable;

/**
 * FileName: Email
 * Author: nanzong
 * Date: 2019/7/16 12:36 PM
 * Description: 邮件对象JavaBean
 * History:
 */
public class Email implements Serializable {
    private static final long serialVersionUID = 1L;

    private String mailAdd;
    private boolean eamil;
    public Email(){}

    public Email(String mainAdd) {
        this.mailAdd = mainAdd;
    }

    public String getMainAdd() {
        return mailAdd;
    }

    public void setMainAdd(String mainAdd) {
        this.mailAdd = mainAdd;
    }

    public boolean isEamil() {
        // 正则表达式，定义邮箱格式
        String regex = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
        // matches()方法可判断字符串是否与正则表达式匹配
        if (mailAdd.matches(regex)) {
            // eamil为真
            eamil = true;
        }
        // 返回eamil
        return eamil;
    }

    public void setEamil(boolean eamil) {
        this.eamil = eamil;
    }
}
