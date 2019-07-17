<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/14
  Time: 10:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    System.out.println("basePath------->" + basePath);
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My JSP 'index.jsp' starting page</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
<form id="form1" name="form1" method="post" action="session.jsp">
    <div align="center">
        <table width="23%" border="0">
            <tr>
                <td width="36%">
                    <div align="center">您的名字是：</div>
                </td>
                <td width="64%">
                    <label>
                        <div align="center">
                            <input type="text" name="name">
                        </div>
                    </label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <label>
                        <div align="center">
                            <input type="submit" name="Submit" value="提交">
                        </div>
                    </label>
                </td>
            </tr>
        </table>
    </div>
    <p/>
</form>
</body>
</html>
