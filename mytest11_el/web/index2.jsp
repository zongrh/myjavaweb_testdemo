<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/30
  Time: 8:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<%
    List<String> list = new ArrayList<>();
    list.add("饼干");
    list.add("牛奶");
    list.add("果冻");
    session.setAttribute("goodsList", list);
%>
<%
    List<String> list1 = (List<String>) session.getAttribute("goodsList");
    for (int i = 0; i < list1.size(); i++) {
        request.setAttribute("requestI", i);

%>
${requestI}:${goodsList[requestI]}<br>
<%
    }
%>
</body>
</html>
