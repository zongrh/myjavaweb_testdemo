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
    <title>调查结果</title>
</head>
<body>
<jsp:useBean id="paper" class="package7.Paper"/>
<jsp:useBean id="convert" class="package7.Convert"/>
<jsp:setProperty name="paper" property="*"/>
<div>
    <h1>调查结果</h1>
    <hr/>
    <ul>
        <li>
            你经常使用的编程语言：<%=convert.arr2Str(paper.getLanguages())%>
        </li>
        <li>
            你目前所掌握的技术：<%=convert.arr2Str(paper.getTechnics())%>
        </li>
        <li>
            在学习中感觉有困难的部分：<%=convert.arr2Str(paper.getParts())%>
        </li>
    </ul>
</div>

</body>
</html>
