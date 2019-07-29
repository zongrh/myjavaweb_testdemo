package mypackage2;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * FileName: AddServlet
 * Author: nanzong
 * Date: 2019/7/18 5:29 PM
 * Description:
 * History:
 */
public class AddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String author = req.getParameter("author");
        String price = req.getParameter("price");
        PrintWriter out = resp.getWriter();
        out.println("图书信息添加成功"+"<br>");
        out.println("图书编号：" + id+"<br>");
        out.println("图书名称：" + name+"<br>");
        out.println("图书作者：" + author+"<br>");
        out.println("图书价格：" + price+"<br>");
        out.flush();
        out.close();
    }
}
