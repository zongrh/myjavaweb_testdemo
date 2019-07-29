<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/18
  Time: 12:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
<form action="/servlet/RegServlet" method="post">
    <table align="center" width="450">
        <tr>
            <td align="center" colspan="2">
                <h2>用户注册</h2>
                <hr>
            </td>
        </tr>
        <tr>
            <td align="right">用户名：</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td align="right">密码：</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td align="right">性别：</td>
            <td>
                <input type="radio" name="sex" value="man" checked="checked">男
                <input type="radio" name="sex" value="woman">女
            </td>
        </tr>
        <tr>
            <td align="right">QQ号码：</td>
            <td><input type="text" name="qq"></td>
        </tr>
        <tr>
            <td align="right">E-Mail</td>
            <td>
                <input type="text" name="mail">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <input type="submit" value="注册">
            </td>
        </tr>

    </table>

</form>

</body>
</html>
