import cn.hibernate.model1.TbEmployeeEntity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

/**
 * FileName: TestEmployee
 * Author: nanzong
 * Date: 2019/8/22
 * Description:
 * History:
 */
public class TestEmployee {
    private SessionFactory sessionFactory;
    private Session session;
    private Transaction transaction;

    @Before
    public void init() {
        Configuration configuration = new Configuration().configure();//创建配置对象
        sessionFactory = configuration.buildSessionFactory();//创建会话工厂
        session = sessionFactory.openSession();//开启会话
        transaction = session.beginTransaction();//开启事务
    }

    @After
    public void destory() {
//        事务提交
        transaction.commit();
//        关闭会话
        session.close();
//        关闭会话工厂
        sessionFactory.close();
    }

    @Test
    public void testEmployee() {
//        生成sql中的数据对象
        TbEmployeeEntity employeeEntity = new TbEmployeeEntity(4,"李四","女","android delvloper","hangzhou","专业");
//        保存对象进数据库
        session.save(employeeEntity);
    }

}
