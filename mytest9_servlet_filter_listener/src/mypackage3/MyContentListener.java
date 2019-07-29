package mypackage3;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * FileName: MyContentListener
 * Author: nanzong
 * Date: 2019/7/18 9:45 PM
 * Description:
 * History:
 */
@WebListener("This is only a demo listener")
public class MyContentListener implements ServletContextListener {

    /**
     * Default constructor.
     */
    public MyContentListener() {
        // TODO Auto-generated constructor stub
    }

    @Override
    public void contextDestroyed(ServletContextEvent arg0) {
        // TODO Auto-generated method stub

    }

    @Override
    public void contextInitialized(ServletContextEvent arg0) {
        // TODO Auto-generated method stub
    }


    }
