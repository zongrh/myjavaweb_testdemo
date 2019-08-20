<%--
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
  <form action="${pageContext.request.contextPath}/UploadServlet" method="post" enctype="multipart/form-data">
    <label>选择一个文件：</label>
    <input type="file" name="file"><br>
    <input type="submit" value="上传"><br>
  </form>
  </body>
</html>
