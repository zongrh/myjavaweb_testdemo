<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/16
  Time: 11:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<%--初始化javabean--%>
<jsp:useBean id="produce" class="package3.Produce"/>
<%--修改javabean的参数--%>
<jsp:setProperty name="produce" property="name" value="洗衣机"/>
<jsp:setProperty name="produce" property="price" value="99.6"/>
<jsp:setProperty name="produce" property="count" value="88"/>
<jsp:setProperty name="produce" property="factoryAdd" value="广东省xxxx"/>
<div>
    <ul>
        <li>
            商品名称：
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
