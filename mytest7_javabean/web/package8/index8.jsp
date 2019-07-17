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
    <title>学生信息</title>
    <style type="text/css">
        li {
            font-size: 12px
        }
    </style>
</head>
<body>
<jsp:useBean id="student" class="package8.Student">
    <jsp:setProperty name="student" property="id" value="1"/>
    <jsp:setProperty name="student" property="name" value="长空"/>
    <jsp:setProperty name="student" property="sex" value="男"/>
    <jsp:setProperty name="student" property="age" value="11"/>
    <jsp:setProperty name="student" property="classes" value="三年二班"/>
</jsp:useBean>
<ul>
    <li>
        学号：<%=student.getId()%>
    </li>
    <li>
        姓名：<%=student.getName()%>
    </li>
    <li>
        性别：<%=student.getSex()%>
    </li>
    <li>
        年龄：<%=student.getAge()%>
    </li>
    <li>
        班级：<%=student.getClasses()%>
    </li>
</ul>

</body>
</html>
