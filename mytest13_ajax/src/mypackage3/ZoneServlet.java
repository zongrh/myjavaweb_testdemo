package mypackage3;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 * FileName: ZoneServlet
 * Author: nanzong
 * Date: 2019/8/1
 * Description:
 * History:
 */
@WebServlet(name = "zoneServlet", urlPatterns = "/zoneServlet")
public class ZoneServlet extends HttpServlet {

    /**
     * The doGet method of the servlet. <br>
     * <p>
     * This method is called when a form has its tag value method equals to get.
     *
     * @param request  the request send by the client to the server
     * @param response the response send by the server to the client
     * @throws ServletException if an error occurred
     * @throws IOException      if an error occurred
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");        //获取action参数的值
        System.out.println("---doGet----action------" + action);
        if ("getProvince".equals(action)) {    //获取省份和直辖市信息
            this.getProvince(request, response);
        } else if ("getCity".equals(action)) {    //获取市县信息
            System.out.println("-----getCity-");
            this.getCity(request, response);
        }
    }

    /**
     * 获取省份和直辖市
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void getProvince(HttpServletRequest request,
                            HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");        //设置响应的编码方式
        String result = "";
        CityMap cityMap = new CityMap();//实例化保存省份信息的CityMap类的实例
        Map<String, String[]> map = cityMap.model;//获取省份信息保存到Map中
        Set<String> set = map.keySet();        //获取Map集合中的键，并以Set集合返回
        Iterator it = set.iterator();
        while (it.hasNext()) {        //将获取的省份连接为一个以逗号分隔的字符串
            result = result + it.next() + ",";
        }
        result = result.substring(0, result.length() - 1);    //去除最后一个逗号
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.print(result);        //输出获取的省份字符串
        out.flush();
        out.close();
    }

    /**
     * 获取市县
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void getCity(HttpServletRequest request,
                        HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");    //设置响应的编码方式
        String result = "";
        String selProvince = request.getParameter("parProvince");    //获取选择的省份
        System.out.println("----获取选择的省份---" + selProvince);

        selProvince = new String(selProvince.getBytes("utf-8"), "utf-8");
        CityMap cityMap = new CityMap();    //实例化保存省份信息的CityMap类的实例
        Map<String, String[]> map = cityMap.model;    //获取省份信息保存到Map中
        System.out.println("----map.size() ---" + map.size());
        String[] arrCity = map.get(selProvince);    //获取指定键的值
        for (int i = 0; i < arrCity.length; i++) {        //将获取的市县连接为一个以逗号分隔的字符串
            result = result + arrCity[i] + ",";
            System.out.println("----市---" + result);
        }
        result = result.substring(0, result.length() - 1);    //去除最后一个逗号
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.print(result);                                //输出获取的市县字符串
        out.flush();
        out.close();
    }
}
