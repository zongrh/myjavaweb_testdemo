<%@ page import="mypackage.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/26
  Time: 11:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有图书信息</title>
    <style type="text/css">
        form {
            margin: 0px;
        }

        td {
            font-size: 12px;
        }

        h2 {
            margin: 2px;
        }

    </style>
    <script type="text/javascript">
        function check(form){
            with(form){
                if(bookCount.value == ""){
                    alert("请输入更新数量！");
                    return false;
                }
                if(isNaN(bookCount.value)){
                    alert("格式错误！");
                    return false;
                }
                return true;;
            }

    </script>

</head>
<body>
<table align="center" width="450" border="1" height="180" bordercolor="white" bgcolor="black" cellpadding="1"
       cellspacing="1">
    <tr bgcolor="#f5deb3">
        <td align="center" colspan="6">
            <h2>所有图书信息</h2>
        </td>
    </tr>
    <tr align="center" bgcolor="#e1ffc1">
        <td><b>ID</b></td>
        <td><b>图书名称</b></td>
        <td><b>价格</b></td>
        <td><b>数量</b></td>
        <td><b>作者</b></td>
        <td><b>修改数量</b></td>
    </tr>
    <%
        // 获取图书信息集合
        List<Book> list = (List<Book>) request.getAttribute("list");
        // 判断集合是否有效
        if (list == null || list.size() < 1) {
            out.println("没有数据");
        } else {
            // 遍历图书集合中的数据
            for (Book book : list) {
    %>
    <tr align="center" bgcolor="white">
        <td><%=book.getId()%>
        </td>
        <td><%=book.getName()%>
        </td>
        <td><%=book.getPrice()%>
        </td>
        <td><%=book.getBookCount()%>
        </td>
        <td><%=book.getAuthor()%>
        </td>
        <td>
            <form action="updateBook" method="post" onsubmit="return check(this)">
                <input type="hidden" name="id"value="<%=book.getId()%>">
                <input type="text" name="bookCount" size="3">
                <input type="submit" value="修改">
            </form>
        </td>
    </tr>
    <%
            }
        }
    %>

</table>
</body>
</html>