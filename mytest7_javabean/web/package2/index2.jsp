<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/15
  Time: 10:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<jsp:useBean id="produce" class="package2.Produce"></jsp:useBean>
<div>
    <ul>
        <li>商品名称：
            <jsp:getProperty name="produce" property="name"/>
        </li>
        <li>
            商品价格：
            <jsp:getProperty name="produce" property="price"/>
        </li>
        <li>
            商品数量：
            <jsp:getProperty name="produce" property="count"/>
        </li>
        <li>
            商品厂址：
            <jsp:getProperty name="produce" property="factoryAdd"/>
        </li>
    </ul>
</div>

</body>
</html>
