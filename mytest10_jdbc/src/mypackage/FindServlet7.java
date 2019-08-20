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
public class FindServlet7 {

    /**
     * 获取数据库连接
     *
     * @return Connection对象
     */
    public Connection getConnection() {
        // 数据库连接
        Connection conn = null;
        try {
            // 加载数据库驱动，注册到驱动管理器
            Class.forName("com.mysql.jdbc.Driver");
            // 数据库连接字符串
            String url = "jdbc:mysql://localhost:3306/db_database10";
            // 数据库用户名
            String username = "root";
            // 数据库密码
            String password = "123456";
            // 创建Connection连接
            conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // 返回数据库连接
        return conn;
    }

    public List<Book>findAll(){
        // 实例化List对象
        List<Book> list = new ArrayList<Book>();
        // 创建数据库连接
        Connection conn = getConnection();
        //调用存储过程
        try {
//            CallableStatement cs = conn.prepareCall("{call findAllBook()}");
            CallableStatement cs = conn.prepareCall("{call findAllBook()}");
            // 执行查询操作，并获取结果集
            ResultSet rs = cs.executeQuery();
            System.out.println("---------------> :"+(rs == null));
            // 判断光标向后移动，并判断是否有效
            while(rs.next()){
                // 实例化Book对象
                Book book = new Book();
                // 对id属性赋值
                book.setId(rs.getInt("id"));
                // 对name属性赋值
                book.setName(rs.getString("name"));
                // 对price属性赋值
                book.setPrice(rs.getDouble("price"));
                // 对bookCount属性赋值
                book.setBookCount(rs.getInt("bookCount"));
                // 对author属性赋值
                book.setAuthor(rs.getString("author"));
                System.out.println("=================================");
                // 将图书对象添加到集合中
                list.add(book);
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        // 返回list
        return list;

    }


}



