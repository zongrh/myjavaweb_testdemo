<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/31
  Time: 8:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<%
    String[] userList = {"明日科技", "mr", "mrsoft", "zon"};
    String user = new String(request.getParameter("user").getBytes("ISO-8859-1"),"GB18030");	//获取用户名

    Arrays.sort(userList);									//对数组排序
    int result=Arrays.binarySearch(userList,user);				//搜索数组
    if(result>-1){
        out.println("很抱歉，该用户名已经被注册！");			//输出检测结果
    }else{
        out.println("恭喜您，该用户名没有被注册！");			//输出检测结果
    }
%>
</body>
</html>
