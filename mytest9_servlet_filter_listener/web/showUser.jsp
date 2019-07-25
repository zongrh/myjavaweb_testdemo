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
    <link href="style3.css" rel="stylesheet" type="text/css">
</head>
<body>
<div align="center">
    <table width="506" height="246" border="0" cellpadding="0"
           cellspacing="0" background="image/background2.jpg">
        <tr>
            <td align="center">
                <br/>
                <textarea rows="8" cols="20">

                    
                </textarea>

            </td>
        </tr>
    </table>
</div>
</body>
</html>
