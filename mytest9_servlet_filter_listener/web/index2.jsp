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
    <title>添加图书信息</title>
</head>
<body>
<form action="AddServlet" method="post">
    <table align="center" border="1" width="350">
        <tr>
            <td class="2" align="center" colspan="2">
                <h2>添加图书信息</h2>
            </td>
        </tr>
        <tr>
            <td align="right">图书编号：</td>
            <td>
                <input type="text" name="id">
            </td>
        </tr>
        <tr>
            <td align="right">图书名称：</td>
            <td>
                <input type="text" name="name">
            </td>
        </tr>
        <tr>
            <td align="right">图书作者：</td>
            <td>
                <input type="text" name="author">
            </td>
        </tr>
        <tr>
            <td align="right">图书价格：</td>
            <td>
                <input type="text" name="price">
            </td>
        </tr>
        <tr>
           <td class="2" align="center" colspan="2">
               <input type="submit" value="添加">
           </td>
        </tr>

    </table>


</form>
</body>
</html>
