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
    <title>批量插入数据</title>
</head>
<body>
<jsp:useBean id="batch" class="mypackage.Batch"/>
<%
    int row = batch.saveBatch();
    out.print("批量插入了["+row+"]条数据");
%>
</body>
</html>
