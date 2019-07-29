package mypackage11;

import mypackage9.Student;

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

@WebServlet(name = "findstudent11",urlPatterns = "/findstudent11")
public class FindStudent11 extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 实例化StudentDao
        StudentDao11 dao = new StudentDao11();
        List<Student> list = dao.findStudent();
        // 将图书集合放置到request之中
        request.setAttribute("list", list);
        // 请求转发到book_list.jsp
        request.getRequestDispatcher("index11_delete_list.jsp").forward(request, response);
    }

}
