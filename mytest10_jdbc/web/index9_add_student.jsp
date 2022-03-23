<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/26
  Time: 11:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加学生信息</title>
</head>
<body>
<form action="addStudent" method="post">
    <table align="center" width="450">
        <tr>
            <td align="center" colspan="2">
                <h2>添加学生信息</h2>
                <hr>
            </td>
        </tr>
        <tr>
            <td align="right">姓名：</td>
            <td><input type="text" name="name" /></td>
        </tr>
        <tr>
            <td align="right">性别：</td>
            <td>
                <input type="radio" name="sex" value="男" checked="checked"/>男
                <input type="radio" name="sex" value="女"/>女
            </td>
        </tr>
        <tr>
            <td align="right">年龄：</td>
            <td>
                <select name="age">
                    <option value="10" selected="selected">10</option>
                    <option value="11" selected="selected">11</option>
                    <option value="12" selected="selected">12</option>
                    <option value="13" selected="selected">13</option>
                    <option value="13" selected="selected">13</option>
                    <option value="13" selected="selected">13</option>
                    <option value="13" selected="selected">13</option>
                    <option value="13" selected="selected">13</option>
                </select>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <input type="submit" value="添　加">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
