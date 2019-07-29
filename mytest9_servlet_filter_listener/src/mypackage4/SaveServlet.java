package mypackage4;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * FileName: SaveServlet
 * Author: nanzong
 * Date: 2019/7/19 5:33 PM
 * Description:
 * History:
 */
@WebServlet(name = "saveServlet", urlPatterns = "/SaveServlet")
public class SaveServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置request与response的编码
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        //获取表单中属性值
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String sex = request.getParameter("sex");
        String question = request.getParameter("question");
        String answer = request.getParameter("answer");
        String email = request.getParameter("email");

        System.out.println("----" + username + "  " + "----" + password + "  " + "----" + sex + "  " + "----" + question + "  " + "----" + answer + "  " + "----" + email + "  ");
        PrintWriter out = response.getWriter();
        out.println("姓名: "+username+"<br/>");
        out.println("密码: "+password+"<br/>");
        out.println("性别: "+sex+"<br/>");
        out.println("问题: "+question+"<br/>");
        out.println("答案: "+answer+"<br/>");
        out.println("邮箱: "+email+"<br/>");
        out.flush();
        out.close();

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
