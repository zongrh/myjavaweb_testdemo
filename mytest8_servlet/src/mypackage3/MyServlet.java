package mypackage3;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * FileName: MyServlet
 * Author: nanzong
 * Description:
 * History:
 */
public class MyServlet extends HttpServlet {
    private static final long serialVersionUID = 3563565034243126713L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("utf-8");
        PrintWriter out = resp.getWriter();
        out.println("<HTML>");
        out.println("  <HEAD><TITLE>Servlet实例</TITLE></HEAD>");
        out.println("<Body>");
        out.println("Servlet实例：");
        out.println(this.getClass());
        out.println("<Body>");
        out.println("<HTML>");
        out.flush();
        out.close();
    }
}
