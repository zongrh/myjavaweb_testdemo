package mypackage6;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * FileName: CalculateServlet
 * Author: nanzong
 * Description: 计算器Servlet
 * History:
 */
public class CalculateServlet extends HttpServlet {
    private static final long serialVersionUID = 7223778025721767631L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("GBK");

        PrintWriter out = resp.getWriter();
        double firstNum = Double.valueOf(req.getParameter("firstNum"));
        double secondNum = Double.valueOf(req.getParameter("secendNum"));
        String operator = req.getParameter("operator");
        double result = 0;
        if ("+".equals(operator)) {
            result = firstNum + secondNum;
        } else if ("-".equals(operator)) {
            result = firstNum - secondNum;
        } else if ("*".equals(operator)) {
            result = firstNum * secondNum;
        } else if ("/".equals(operator)) {
            result = firstNum / secondNum;
        }
        out.println(firstNum + " " + operator + " " + secondNum + " = " + result);
        out.println("<a href='index6.jsp'>返回</a>");
        out.flush();
        out.close();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
