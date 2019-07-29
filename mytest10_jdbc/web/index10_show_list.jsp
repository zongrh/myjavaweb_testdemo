<%@ page import="mypackage9.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/26
  Time: 11:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Insert title here</title>
    <style type="text/css">
      td{font-size: 12px;}
      h2{margin: 0px}
    </style>
  </head>
  <body>
  <table align="center" width="450" border="1" height="180" bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1">
    <tr bgcolor="white">
      <td align="center" colspan="4">
        <h2>所有学生信息</h2>
      </td>
    </tr>
    <tr align="center" bgcolor="#e1ffc1" >
      <td><b>学号</b></td>
      <td><b>姓名</b></td>
      <td><b>性别</b></td>
      <td><b>年龄</b></td>
    </tr>
    <%
      // 获取图书信息集合
      List<Student> list = (List<Student>)request.getAttribute("list");
      // 判断集合是否有效
      if(list == null || list.size() < 1){
        out.print("没有数据！");
      }else{
        // 遍历图书集合中的数据
        for(Student s : list){
    %>
    <tr align="center" bgcolor="white">
      <td><%=s.getId()%></td>
      <td><%=s.getName()%></td>
      <td><%=s.getSex()%></td>
      <td><%=s.getAge()%></td>
    </tr>
    <%
        }
      }
    %>
  </table>
  </body>
</html