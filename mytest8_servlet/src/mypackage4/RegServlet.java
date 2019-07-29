package mypackage4;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * FileName: RegServlet
 * Author: nanzong
 * Description:用户注册Servlet
 * History:
 */
public class RegServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 设置response的编码
        req.setCharacterEncoding("utf-8");
        // 设置request的编码
        resp.setCharacterEncoding("GB18030");


        String name = req.getParameter("name");
        String password = req.getParameter("password");
        String sex = req.getParameter("sex");
        String qq = req.getParameter("qq");
        String mail = req.getParameter("mail");

//PrintWriter（）的作用是为了定义流输出的位置
        PrintWriter out = resp.getWriter();
        out.println("用户名：" + name);
        out.println("密码：" + password);
        out.println("性别：" + sex);
        out.println("qq号：" + qq);
        out.println("e-mail：" + mail);
        out.flush();
        out.close();
    }
}
