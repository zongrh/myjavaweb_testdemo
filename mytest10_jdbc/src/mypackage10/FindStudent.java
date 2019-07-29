package mypackage10;

import mypackage9.Student;
import mypackage9.StudentDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * FileName: FindStudent11
 * Author: nanzong
 * Date: 2019/7/29
 * Description:
 * History:
 */
@WebServlet(name = "findStudent", urlPatterns = "/findStudent")
public class FindStudent extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 实例化StudentDao
        StudentDao10 dao = new StudentDao10();
        List<Student> list = dao.findStudent();
        // 将图书集合放置到request之中
        request.setAttribute("list", list);
        // 请求转发到book_list.jsp
        request.getRequestDispatcher("index10_show_list.jsp").forward(request, response);
    }


}
