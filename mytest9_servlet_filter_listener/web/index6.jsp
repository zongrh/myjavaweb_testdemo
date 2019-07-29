<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/18
  Time: 11:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>意见反馈</title>
    <style type="text/css">
      body {
        margin: 0px;
        font-size: 12px;
      }
      td{
        font-size: 12px;
      }
      .div1{
        width: 1003px;
        height: 707px;
        background-image: url("images/bg.jpg");
      }
      .div2{
        width: 500px;
        margin-top:245px;
        margin-left:180px;
        text-align:left;
      }
      .tl{
        width: 500px;
        height: 20px;
        font-weight: bold;
        background: #A3C0C6;
        padding: 5px;
      }
      .ct{
        width: 500px;
        padding-left: 30px;
        padding-top: 5px;
        padding-bottom: 5px;
      }
      .tt{
        margin-left:5px;
        width: 70px;
        background: #6bc649;
        padding: 5px;
        font-weight: bold;
        font-size: 13px;
      }
    </style>
  </head>
  <body>
  <div align="center">
    <div class="div1">
      <div class="div2">
        <%
          String title = (String)request.getAttribute("title");
          String content = (String)request.getAttribute("content");
          if(title != null && !title.isEmpty()){
            out.println("<span class='tl'>" + title + "</span>");
          }
          if(content != null && !content.isEmpty()){
            out.println("<span class='ct'>" + content + "</span>");
          }
        %>
        <span class="tl">谢谢你们</span>
        <span class="ct">你们的公司服务态度非常好，谢谢你们！</span>
        <span class="tl">谢谢你们</span>
        <span class="ct">你们的公司服务态度非常好<br>但部分客服服务态度还要加强！</span>
        <form action="MessageServlet" method="post">
          <span class="tt">意见反馈</span>
          <table border="0" width="500" align="center">
            <tr>
              <td align="right">标 题：</td>
              <td><input type="text" name="title" size="30"></td>
            </tr>
            <tr>
              <td align="right">内 容：</td>
              <td>
                <textarea rows="5" cols="40" name="content"></textarea>
              </td>
            </tr>
            <tr>
              <td align="center" colspan="2">
                <input type="submit" value="提 交">
              </td>
            </tr>
          </table>
        </form>
      </div>
    </div>
  </div>
  </body>
</html>
