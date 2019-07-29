package mypackage6;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * FileName: MessageServlet
 * Author: nanzong
 * Date: 2019/7/25 10:04 PM
 * Description:
 * History:
 */
public class MessageServlet extends HttpServlet {

    private static final long serialVersionUID = 6536812362207677194L;

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 获取标题
        String title = request.getParameter("title");
        System.out.println(title);
        // 获取内容
        String content = request.getParameter("content");
        System.out.println(content);

        // 将标题放置到request中
        request.setAttribute("title", title);
        // 将内容放置到request中
        request.setAttribute("content", content);
        // 转发到result.jsp页面
        request.getRequestDispatcher("index6.jsp").forward(request, response);
    }
}
