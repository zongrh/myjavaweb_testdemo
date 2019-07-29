package mypackage2;

import javax.servlet.*;
import java.io.IOException;

/**
 * FileName: CharactorFilter
 * Author: nanzong
 * Date: 2019/7/18 5:40 PM
 * Description:字符编码过滤器
 * History:
 */
public class CharactorFilter implements Filter {

    // 字符编码
    String encoding = null;
    @Override
    public void destroy() {
        encoding = null;
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        // 判断字符编码是否为空
        if(encoding != null){
            // 设置request的编码格式
            request.setCharacterEncoding(encoding);
            // 设置response字符编码
            response.setContentType("text/html; charset="+encoding);
        }
        // 传递给下一过滤器
        chain.doFilter(request, response);
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // 获取初始化参数
        encoding = filterConfig.getInitParameter("encoding");
    }
}
