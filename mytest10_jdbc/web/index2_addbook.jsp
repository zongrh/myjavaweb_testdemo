<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/26
  Time: 11:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>添加图书信息</title>
  <script type="text/javascript">
      function check(form){
          with(form){
              if(name.value == ""){
                  alert("图书名称不能为空");
                  return false;
              }
              if(price.value == ""){
                  alert("价格不能为空");
                  return false;
              }
              if(author.value == ""){
                  alert("作者不能为空");
                  return false;
              }
              return true;
          }
      }
  </script>
</head>
<body>
<form action="addbook2.jsp" method="post" onsubmit="return check(this);">
  <table align="center" width="450">
    <tr>
      <td align="center" colspan="2">
        <h2>添加图书信息</h2>
        <hr>
      </td>
    </tr>
    <tr>
      <td align="right">图书名称：</td>
      <td><input type="text" name="name" /></td>
    </tr>
    <tr>
      <td align="right">价　　格：</td>
      <td><input type="text" name="price" /></td>
    </tr>
    <tr>
      <td align="right">数　　量：</td>
      <td><input type="text" name="bookCount" /></td>
    </tr>
    <tr>
      <td align="right">作　　者：</td>
      <td><input type="text" name="author" /></td>
    </tr>
    <tr>
      <td align="center" colspan="2">
        <input type="submit" value="添　加">
      </td>
    </tr>
  </table>
</form>
</body>
</html>