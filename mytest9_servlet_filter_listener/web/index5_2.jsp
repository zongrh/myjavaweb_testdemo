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
    <title>文件上传</title>
</head>
<body>
<form action="/UploadServlet" enctype="multipart/form-data" method="post">
    选择文件 <input type="file" name="uploadFile">
    <input type="submit" value="上传">
</form>
</body>
</html>
