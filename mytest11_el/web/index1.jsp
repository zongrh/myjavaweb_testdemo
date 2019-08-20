<%--
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
    String[] arr = {"Java Web开发典型模块大全", "Java范例完全自学手册", "JSP项目开发全程实录"};    //定义一维数组
    request.setAttribute("book", arr);        //将数组保存到request对象中
%>
<%
    String[] arr1 = (String[]) request.getAttribute("book");
//    通过循环和EL输出一堆数组的内容
    for (int i = 0; i < arr1.length; i++) {
        request.setAttribute("requestI", i);


%>
${requestI}:${book[requestI]}<br>    <!-- 输出数组中第i个元素 -->

<%
    }
%>
</body>
</html>
