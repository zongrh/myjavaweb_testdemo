<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/30
  Time: 8:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
<form name="form1" method="post" action="deal.jsp">
    <table width="349" height="237" border="0" align="center" cellpadding="0" cellspacing="0"
           background="images/bg.gif">
        <tr>
            <td width="116" height="86">&nbsp;</td>
            <td width="233" valign="bottom"><input name="username" type="text" id="username"
                                                   style="border:1px solid #B99500; width:160px;">
                *
            </td>
        </tr>
        <tr>
            <td height="40">&nbsp;</td>
            <td valign="bottom"><input name="pwd" type="password" id="pwd"
                                       style="border:1px solid #B99500; width:160px;">
                *
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">&nbsp; <input type="image" name="imageField" src="images/bt_1.gif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
                    type="image" name="imageField" src="images/bt_2.gif" onClick="form1.reset();return false;">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
