package mypackage3;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

/**
 * FileName: UserInfoTrace
 * Author: nanzong
 * Date: 2019/7/18 9:49 PM
 * Description:
 * History:
 */
public class UserInfoTrace implements HttpSessionBindingListener {
    private String user;
    private UserInfoList container = UserInfoList.getInstance();

    public UserInfoTrace(){
        user = "";
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public void valueBound(HttpSessionBindingEvent arg0) {
        System.out.println("上线" + this.user);
    }

    public void valueUnBound(HttpSessionBindingEvent arg0) {
        System.out.println("下线" + this.user);
        if (user != "") {
            container.removeUserInfo(user);
        }
    }

}
