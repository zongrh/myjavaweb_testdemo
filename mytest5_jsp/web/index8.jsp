<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/12
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>计算5的阶乘并在JSP页面中输出</title>
</head>
<body>
计算5的阶乘并在JSP页面中输出
<br/>

<%
    String str = "";
    int n = 5;
    long result = 1;
    if ((n < 0) || (n > 17)) {
        str = "n的取值范围是0至17，大于17会超出long类型范围";
    } else {
        for (int i = n; i > 0; i--) {
            result *= i;
        }
        str = n + "的阶乘等于：" + result;
    }
%>
<%--输出系统时间--%>
当前时间：<%=str%>
</body>
</html>
