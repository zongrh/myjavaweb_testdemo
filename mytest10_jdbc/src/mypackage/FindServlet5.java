package mypackage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * FileName: FindServlet
 * Author: nanzong
 * Date: 2019/7/28 10:01 PM
 * Description:
 * History:
 */
@WebServlet(name = "findBookList5", urlPatterns = "/findBookList5")
public class FindServlet5 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            // 加载数据库驱动，注册到驱动管理器
            Class.forName("com.mysql.jdbc.Driver");
            // 数据库连接字符串
            String url = "jdbc:mysql://localhost:3306/db_database10";
            // 数据库用户名
            String username = "root";
            // 数据库密码
            String password = "123456";
            //创建Connetion 连接
            Connection conn = DriverManager.getConnection(url, username, password);
            //获取Statement
            Statement stmt = conn.createStatement();
            // 添加图书信息的SQL语句
            String sql = "select * from tb_books";
            //执行查询
            ResultSet rs = stmt.executeQuery(sql);
            //实例化List对象
            List<Book> list = new ArrayList<>();
            while (rs.next()) {
                Book book = new Book();
                book.setId(rs.getInt("id"));
                book.setName(rs.getString("name"));
                book.setPrice(rs.getDouble("price"));
                book.setBookCount(rs.getInt("bookCount"));
                book.setAuthor(rs.getString("author"));
                list.add(book);
            }
            for (int i = 0; i < list.size(); i++) {
                System.out.println("list------> " + list.get(i).toString());
            }
            //将图书集合放置在requset中
            req.setAttribute("list", list);
            rs.close();
            stmt.close();
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("index5_delete_book.jsp").forward(req, resp);
    }

}



