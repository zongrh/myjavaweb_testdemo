package cn.hibernate.servlet1;

import cn.hibernate.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * FileName: QueryEmployee
 * Author: nanzong
 * Date: 2019/8/22
 * Description:
 * History:
 */
@WebServlet( name = "QueryOneEmployee",urlPatterns = "/QueryOneEmployee")
public class QueryEmployee extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        List emplist = new ArrayList();
        Session session = null;
        try {
            session = HibernateUtil.getSession();
            String hql = "from TbEmployeeEntity emp";
            Query q = session.createQuery(hql);
            emplist = ((org.hibernate.query.Query) q).list();
        } catch (HibernateException e) {
            e.printStackTrace();
        }finally {
            HibernateUtil.closeSession();
        }
        req.setAttribute("emplist", emplist);
        RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/index.jsp");

    }

}
