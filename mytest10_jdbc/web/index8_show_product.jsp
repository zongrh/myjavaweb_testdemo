<%@ page import="java.util.List" %>
<%@ page import="mypackage8.Product" %><%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/26
  Time: 11:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有商品信息</title>
</head>
<body>
<table align="center" width="450" border="1" height="180" bordercolor="white" bgcolor="black" cellpadding="1"
       cellspacing="1">
    <tr bgcolor="#f5deb3">
        <td align="center" colspan="5">
            <h2>所有商品信息</h2>
        </td>
    </tr>
    <tr align="center" bgcolor="#e1ffc1">
        <td><b>ID</b></td>
        <td><b>商品名称</b></td>
        <td><b>价格</b></td>
        <td><b>数量</b></td>
        <td><b>单位</b></td>
    </tr>
    <%
        // 获取图书信息集合
        List<Product> list = (List<Product>) request.getAttribute("list");
        if (list == null || list.size() < 1) {
            out.println("没有数据");
        } else {
            for (Product p : list) {
    %>
    <tr align="center" bgcolor="white">
        <td><%=p.getId()%>
        </td>
        <td><%=p.getName()%>
        </td>
        <td><%=p.getPrice()%>
        </td>
        <td><%=p.getNum()%>
        </td>
        <td><%=p.getUnit()%>
        </td>
    </tr>
    <%
            }
        }
    %>
    <tr>
        <td align="center" colspan="5" bgcolor="white">
            <%=request.getAttribute("bar")%>
        </td>
    </tr>
</table>
</body>
</html>
