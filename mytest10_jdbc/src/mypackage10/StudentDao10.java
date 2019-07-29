package mypackage10;

import mypackage9.Student;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * FileName: StudentDao10
 * Author: nanzong
 * Date: 2019/7/29
 * Description:
 * History:
 */
public class StudentDao10 {
    /**
     * 获取数据库连接
     * @return Connection对象
     */
    public Connection getConnection(){
        // 数据库连接
        Connection conn = null;
        try {
            // 加载数据库驱动，注册到驱动管理器
            Class.forName("com.mysql.jdbc.Driver");
            // 数据库连接字符串
            String url = "jdbc:mysql://localhost:3306/db_database10?useUnicode=true&characterEncoding=utf8";
            // 数据库用户名
            String username = "root";
            // 数据库密码
            String password = "123456";
            // 创建Connection连接
            conn = DriverManager.getConnection(url,username,password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // 返回数据库连接
        return conn;
    }
    /**
     * 查询所有学生信息
     * @return List<Student>
     */
    public List<Student> findStudent(){
        // 数据库连接
        Connection conn = getConnection();
        // 实例化List对象
        List<Student> list = new ArrayList<Student>();
        try {
            // 获取Statement
            Statement stmt = conn.createStatement();
            // 添加图书信息的SQL语句
            String sql = "select * from tb_student_batch";
            // 执行查询
            ResultSet rs = stmt.executeQuery(sql);
            // 光标向后移动，并判断是否有效
            while(rs.next()){
                // 实例化Book对象
                Student student = new Student();
                // 对id属性赋值
                student.setId(rs.getInt("id"));
                // 对name属性赋值
                student.setName(rs.getString("name"));
                // 对sex属性赋值
                student.setSex(rs.getString("sex"));
                // 对age属性赋值
                student.setAge(rs.getInt("age"));
                // 将图书对象添加到集合中
                list.add(student);
            }
            rs.close();		// 关闭ResultSet
            stmt.close();	// 关闭Statement
            conn.close();	// 关闭Connection
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
