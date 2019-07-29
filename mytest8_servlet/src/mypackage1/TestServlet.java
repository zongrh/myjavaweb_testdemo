package mypackage1;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * FileName: TestServlet
 * Author: nanzong
 * Description:
 * History:
 */
public class TestServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        super.init();
        System.out.println("-----初始化");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
        System.out.println("-----处理Http Get请求");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
        System.out.println("-----处理Http Post请求");

    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPut(req, resp);
        System.out.println("-----处理Http Put请求");
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doDelete(req, resp);
        System.out.println("-----处理Http Delete请求");
    }

    @Override
    public void destroy() {
        super.destroy();
        System.out.println("-----处理Http Get请求");
    }
}
