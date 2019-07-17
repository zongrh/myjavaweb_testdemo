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
    String name = request.getParameter("name");        //获取用户填写的用户名
    System.out.println("log  " + name);
    session.setAttribute("name", name);                //将用户名保存在session对象中
%>
<div align="center">
    <form id="form1" name="form1" method="post" action="result.jsp">
        <table width="28%" border="0">
            <tr>
                <td>您的名字是：</td>
                <td><%=name%>
                </td>
            </tr>
            <tr>
                <td>您最喜欢去的地方是：</td>
                <td><label>
                    <input type="text" name="address"/>
                </label></td>
            </tr>
            <tr>
                <td colspan="2"><label>
                    <div align="center">
                        <input type="submit" name="Submit" value="提交"/>
                    </div>
                </label></td>
            </tr>
        </table>
    </form>
    <p>&nbsp;</p>
</div>

</body>
</html>
