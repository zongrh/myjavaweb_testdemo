package mypackage7;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;

/**
 * FileName: Listenerlocalhost
 * Author: nanzong
 * Date: 2019/7/25 10:25 PM
 * Description:
 * History:
 */
public class Listenerlocalhost extends HttpServlet implements ServletRequestListener, ServletRequestAttributeListener {

    @Override
    public void requestInitialized(ServletRequestEvent sre) {
        System.out.println("请求初始化");
        ServletRequest sr = sre.getServletRequest();
        System.out.println("远程机器的IP:" + sr.getRemoteAddr());
        System.out.println("本地机器的IP:" + sr.getLocalAddr());
        if (sr.getRemoteHost().equals(sr.getLocalAddr())) {
            sr.setAttribute("login", "true");
        } else {
            sr.setAttribute("login", "false");
        }
    }

    @Override
    public void requestDestroyed(ServletRequestEvent sre) {
        System.out.println("请求销毁");
    }

    @Override
    public void attributeAdded(ServletRequestAttributeEvent srae) {
        System.out.print("request attrbite add >>");
        System.out.println(srae.getName() + "=" + srae.getValue());
    }

    @Override
    public void attributeRemoved(ServletRequestAttributeEvent srae) {
        System.out.print("request attrbite removed >>");
        System.out.println(srae.getName() + "=" + srae.getValue());
    }

    @Override
    public void attributeReplaced(ServletRequestAttributeEvent srae) {
        System.out.print("request attrbite replaced >>");
        System.out.println(srae.getName() + "=" + srae.getValue());
    }
}
