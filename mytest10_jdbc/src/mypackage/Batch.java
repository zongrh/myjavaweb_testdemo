package mypackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

/**
 * FileName: Batch
 * Author: nanzong
 * Date: 2019/7/29 9:45 AM
 * Description:
 * History:
 */
public class Batch {
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
            String url = "jdbc:mysql://localhost:3306/mytest_db?characterEncoding=utf8";
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
     * 批量添加数据
     */
    public int saveBatch() throws SQLException {
        int row = 0;
        Connection conn = getConnection();
        String sql = "insert into mytest_user(id,name,sex,age) value(?,?,?,?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        Random random = new Random();
        for (int i = 0; i < 10; i++) {
            ps.setInt(1, i++);
            ps.setString(2, "学生" + i);
            ps.setString(3, i % 2 == 0 ? "男" : "女");
            ps.setInt(4, random.nextInt(5) + 10);
            ps.addBatch();
        }
        int[] rows = ps.executeBatch();
        row = rows.length;
        ps.close();
        conn.close();
        return row;
    }

}
