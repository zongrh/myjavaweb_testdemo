<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/12
  Time: 1:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>倒计时</title>
    <script src="function.js"></script>
    <link href="style.css"rel="stylesheet">
</head>
<body>
<table width="350" height="450" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td valign="bottom" ><table width="346" height="418" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td width="76">		</td>
                <td width="270">
                    <div id="countDown"><b>——</b></div>
                    <script language="javascript">
                        countdown("2009年国庆节","10/1/2009",countDown);
                    </script>
                </td>
            </tr>
        </table></td>
    </tr>
</table
</body>
</html>
