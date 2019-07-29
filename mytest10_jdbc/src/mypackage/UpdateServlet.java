package mypackage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

/**
 * FileName: UpdateServlet
 * Author: nanzong
 * Date: 2019/7/28 11:06 PM
 * Description:
 * History:
 */
@WebServlet(name = "updateBook", urlPatterns = "/updateBook")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.valueOf(req.getParameter("id"));
        int bookCount = Integer.valueOf(req.getParameter("bookCount"));
        // 加载数据库驱动，注册到驱动管理器
        try {
            Class.forName("com.mysql.jdbc.Driver");

            // 数据库连接字符串
            String url = "jdbc:mysql://localhost:3306/mytest_db";
            // 数据库用户名
            String username = "root";
            // 数据库密码
            String password = "123456";
            //创建Connetion 连接
            Connection conn = DriverManager.getConnection(url, username, password);

            String sql = "update tb_books set bookCount=? where id=?";
            //获取PreparedStatement
            PreparedStatement ps = conn.prepareStatement(sql);
            // 对SQL语句中的第一个参数赋值
            ps.setInt(1, bookCount);
            // 对SQL语句中的第二个参数赋值
            ps.setInt(2, id);
            // 执行更新操作
            ps.executeUpdate();
            // 关闭PreparedStatement
            ps.close();
            // 关闭Connection
            conn.close();

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        resp.sendRedirect("findBookList4");
    }
}
