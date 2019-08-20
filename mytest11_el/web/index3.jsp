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
    request.setAttribute("userName", "mr");//定义request范围内的变量userName
    request.setAttribute("pwd", "mrsoft");            //定义pwd范围内的变量pwd
%>
userName=${userName}<br>
pwd=${pwd}<br>
\${userName!="" and (userName=="明日") }：	<!-- 将EL原样输出 -->
${userName!="" and userName=="明日" }<br>	<!-- 输出由关系和逻辑运算符组成的表达式的值 -->
\${userName=="mr" and pwd=="mrsoft" }：	<!-- 将EL原样输出 -->
${userName=="mr" and pwd=="mrsoft" }		<!-- 输出由关系和逻辑运算符组成的表达式的值 -->

</body>
</html>
