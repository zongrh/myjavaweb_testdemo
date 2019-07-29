package mypackage9;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * FileName: StudentDao
 * Author: nanzong
 * Date: 2019/7/29
 * Description:
 * History:
 */
public class StudentDao {

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
            String url = "jdbc:mysql://localhost:3306/db_database10?useUnicode=true&characterEncoding=utf8";
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

    /**
     * 添加学生信息
     *
     * @param student
     * @return
     */
    public int saveStudent(Student student) {
        int row = 0;
        //数据库连接
        Connection conn = getConnection();
        try {
            String sql = "insert into tb_student_batch(name,sex,age) values(?,?,?)";
            // 获取PreparedStatement
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, student.getName());
            ps.setString(2, student.getSex());
            ps.setInt(3, student.getAge());
            row = ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return row;
    }

}
