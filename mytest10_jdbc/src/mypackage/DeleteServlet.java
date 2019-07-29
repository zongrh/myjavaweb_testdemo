package mypackage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * FileName: DeleteServlet
 * Author: nanzong
 * Date: 2019/7/29 8:58 AM
 * Description:
 * History:
 */
@WebServlet(name = "deleteBook", urlPatterns = "/deleteBook")
public class DeleteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        获取图书id
        int id = Integer.valueOf(req.getParameter("id"));
        // 加载数据库驱动，注册到驱动管理器
        try {
            // 加载数据库驱动，注册到驱动管理器
            Class.forName("com.mysql.jdbc.Driver");
            // 数据库连接字符串
            String url = "jdbc:mysql://localhost:3306/mytest_db";
            // 数据库用户名
            String username = "root";
            // 数据库密码
            String password = "123456";
            //创建Connetion 连接
            Connection conn = DriverManager.getConnection(url, username, password);
            //删除图书信息的SQL语句
            String sql = "delete from tb_books where id=?";
            //获取PreparedStatement
            PreparedStatement ps = conn.prepareStatement(sql);
            //对sql语句重的第一个占位符赋值
            ps.setInt(1, id);
            //执行更新操作
            ps.executeUpdate();
            //关闭preparedStatement
            ps.close();
            //关闭connection
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        //重定向到findBook
        resp.sendRedirect("findBookList5");
    }
}



