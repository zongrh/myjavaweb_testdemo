package mypackage5;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * FileName: AddServlet
 * Author: nanzong
 * Description:
 * History:
 */
public class AddServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 设置response的编码
        req.setCharacterEncoding("utf-8");
        // 设置request的编码
        resp.setCharacterEncoding("GB18030");
        String name = req.getParameter("name");
        String price = req.getParameter("price");
        String count = req.getParameter("count");
        String unit = req.getParameter("unit");
        String add = req.getParameter("add");

        // 获取PrintWriter
        PrintWriter out = resp.getWriter();
        //输出商品信息
        out.println("名称："+name);
        out.println("价格："+price);
        out.println("数量："+count);
        out.println("单位："+unit);
        out.println("产地："+add);
        out.flush();
        out.close();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
