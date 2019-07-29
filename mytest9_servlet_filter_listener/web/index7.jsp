<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/18
  Time: 11:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>利用监听使服务器端机器免登录</title>
    <%
        String login = (String) request.getAttribute("login");
        if (login.equals("true")) {
            response.sendRedirect("show.htm");
        }
    %>
</head>
<body>
<div align="center">
    <table width="335" height="225">
        <tr>
            <td background="leftsearch.gif" align="center">
                <form name="form1" method="post" action="show.htm">
                    <input type="submit" name="Submit" value="登录">
                </form>

            </td>
        </tr>

    </table>


</div>

</body>
</html>
