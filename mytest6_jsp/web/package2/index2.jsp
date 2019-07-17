<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/14
  Time: 10:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>捕获异常信息</title>
</head>
<body>
<%
    try {
        int money = 100;
        int number = 0;
        request.setAttribute("result", money / number);//保存执行结果
    }catch(Exception e){
        request.setAttribute("result", "很抱歉，页面产生错误！");//保存错误提示信息
    }
%>

<jsp:forward page="deal2.jsp"/>

</body>
</html>
