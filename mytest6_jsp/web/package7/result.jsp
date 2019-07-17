<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/14
  Time: 10:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My JSP 'session.jsp' starting page</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<%
    //获取用户填写的用户名
    String name = (String) session.getAttribute("name");

    //获取用户输入的最想去的地方
    String solution = request.getParameter("address");

%>
<form id="form1" name="form1" method="post" action="">
    <table width="28%" border="0">
        <tr>
            <td colspan="2">
                <div align="center"><strong>显示答案</strong></div>
            </td>
        </tr>
        <tr>
            <td width="49%">
                <div align="left">您的名字是：</div>
            </td>
            <td width="51%">
                <label>
                    <div align="left"><%=name%>></div>    <!-- 将用户输入的用户名在页面中显示 -->
                </label>
            </td>
        </tr>
        <tr>
            <td><label>
                <div align="left">您最喜欢去的地方是：</div>
            </label></td>
            <td>
                <div align="left"><%=solution%>
                </div>
            </td> <!-- 将用户输入的最想去的地方在页面中显示 -->
        </tr>
    </table>


</form>
<div align="center">
    <form id="">


    </form>
</div>

</body>
</html>
