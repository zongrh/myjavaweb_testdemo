package mypackage1;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * FileName: CountFilter
 * Author: nanzong
 * Date: 2019/7/18 2:27 PM
 * Description: 统计过滤器
 * History:
 */
public class CountFilter implements Filter {
    // 来访数量
    private int count;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
//        获取初始化参数
        String param = filterConfig.getInitParameter("count");
//        将字符串转换为int
        count = Integer.valueOf(param);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
//        访问者数量会增加
        count++;
//        将ServletRequset 转换为HttpServletRequest
        HttpServletRequest request = (HttpServletRequest) servletRequest;
//        获取ServletContext
        ServletContext context = request.getSession().getServletContext();
//        将来访数量值放入到ServletContext中
        context.setAttribute("count", count);
//        向下传递过滤器
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}
