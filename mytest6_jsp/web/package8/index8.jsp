<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/14
  Time: 10:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page对象各方法的应用</title>
</head>
<body>
<%! Object object;%>
<ul>
    <li>getClass()方法的返回值:<%=page.getClass()%>
    </li>
    <li>hashCode()方法的返回值:<%=page.hashCode()%>
    </li>
    <li>toString()方法的返回值:<%=page.toString()%>
    </li>
    <li>与Object对象比较的返回值:<%=page.equals(object)%>
    </li>
    <li>与this对象比较的返回值:<%=page.equals(this)%>
    </li>
</ul>

</body>
</html>
