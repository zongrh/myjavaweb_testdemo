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
  <title>使用监听查看在线用户</title>
  <script language="JavaScript">
      function checkEmpty(form) {
          for (var i = 0; i < form.length; i++) {
              if (form.elements[i].value == "") {
                  alert("表单信息不能为空");
                  return false;
              }
          }
      }
  </script>
  <link href="package3/style3.css" rel="stylesheet" type="text/css">
</head>
<body>
<div align="center">
  <table width="506" height="170" border="0" cellpadding="0"
         cellspacing="0" background="package3/image/background1.jpg">
    <tr>
      <td align="center">
        <form name="form" method="post" action="showUser.jsp" onsubmit="checkEmpty(form)">
          <input type="text" name="user"><br/>
          <input type="submit" name="sunmit" value="登录">

        </form>
      </td>
    </tr>
  </table>
</div>
</body>
</html>
