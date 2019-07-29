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
    <title>录入商品信息</title>
</head>
<body>
<form action="servlet/AddServlet" method="post" onsubmit="return check(this);">
    <table align="center" width="450">
        <tr>
            <td align="center" colspan="2">
                <h2>录入商品信息</h2>
                <hr>
            </td>
        </tr>
        <tr>
            <td align="right">名称：</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td align="right">价格：</td>
            <td><input type="text" name="price"></td>
        </tr>
        <tr>
            <td align="right">数量：</td>
            <td><input type="text" name="count"></td>
        </tr>
        <tr>
            <td align="right">单位：</td>
            <td><input type="text" name="unit"></td>
        </tr>
        <tr>
            <td align="right">产地：</td>
            <td><input type="text" name="add"></td>
        </tr>
        <tr>
            <td align="right" colspan="2">
                <input type="submit" value="添 加">
            </td>
        </tr>

    </table>


</form>

</body>
</html>
