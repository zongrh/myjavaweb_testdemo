<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/8/19
  Time: 5:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="conn" class="mypackage6.ConnDB6" scope="page"></jsp:useBean>
<ul>
    <%
        ResultSet rs=conn.executeQuery("SELECT content,title FROM tb_news ORDER BY addTime DESC");	//获取新闻信息
        if(rs.next()){
            do{
                out.print("<li title='"+rs.getString(1)+"'>"+rs.getString(2)+"</li>");
            }while(rs.next());
        }else{
            out.print("<li>暂无公告信息！</li>");
        }
    %>

</ul>