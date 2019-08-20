<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/31
  Time: 8:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="conn" scope="page" class="mypackage6.ConnDB6"/>
<%
    ResultSet rs = conn.executeQuery("select ID,bookName,author,picture from tb_book ");
    int new_ID = 0;
    String new_bookname = "";
    String new_author = "";
    String new_picture = "";
%>
<html>
<head>
    <title>创建工具提示</title>
    <style>
        td, body {
            font-size: 12px;
        }

        a:hover {
            font-size: 9pt;
            color: #ff6600;
        }

        a {
            font-size: 9pt;
            text-decoration: none;
            color: #ff0000;
            noline: expression(this.onfocus=this.blur);
        }
    </style>
    <script language="JavaScript" src="JS/AjaxRequest.js"></script>
    <script language="JavaScript">
        // 定义一个全局变量，用于保存偏移量的对象
        var offsetE;

        function getData(element, id) {
            offsetE = element;
            var loader = new net.AjaxRequest("getTip.jsp?id=" + id + "&nocache=" + new Date().getTime(), deal, onerror, "GET");
        }

        function deal() {
            // 显示左边距
            document.getElementById("toolTip").style.left = (offsetE.offsetLeft + 50) + "px";
            // 显示上边距
            document.getElementById("toolTip").style.top = offsetE.offsetTop + "px";
            // 显示工具提示
            document.getElementById("bookIntroduce").innerHTM = this.req.responseText;
            // 显示工具提示
            document.getElementById("toolTip").style.display = "block";
        }

        function clearTip() {
            document.getElementById("toolTip").style.display = "none";
        }

        function onerror() {
            alert("出错了！");
        }


    </script>
</head>
<body>
<table width="346" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="571" valign="top" bgcolor="#FFFFFF">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td height="94" valign="top">
                        <div style="position:absolute">
                            <table width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF"
                                   bordercolordark="#FFFFFF" bordercolorlight="CFCFCF">
                                <%
                                    int s = 0;
                                    while (rs.next()) {
                                        new_ID = rs.getInt(1);
                                        new_bookname = rs.getString(2);
                                        new_author = rs.getString(3);
                                        new_picture = rs.getString(4);
                                        if (s % 2 == 0) {
                                %>
                                <tr>
                                    <td align="center" onMouseOver="getData(this,<%=new_ID%>)" onMouseOut="clearTip()">
                                        <table width="0" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td height="95" align="center"><img src="images6/book/<%=new_picture%>" width="143" height="200" border="1">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="22" align="center"><a href="#"><%=new_bookname%>
                                                </a></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="center">作者：<%=new_author%>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <%} else {%>
                                    <td align="center" onMouseOver="getData(this,<%=new_ID%>)" onMouseOut="clearTip()">
                                        <table width="0" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td height="95" align="center"><img src="images6/book/<%=new_picture%>"
                                                                                    width="143" height="200" border="1">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="22" align="center"><a href="#"><%=new_bookname%>
                                                </a></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="center">作者：<%=new_author%>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <%
                                        }
                                        s++;
                                    }
                                %>
                            </table>
                            <div id="toolTip"
                                 style=" background-image:url(images6/tip.gif); width:206px; height:200px; display:none; position:absolute; z-index:100;">
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="20%" height="28">&nbsp;</td>
                                        <td width="71%" valign="middle">&nbsp;</td>
                                        <td width="9%" valign="middle">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td valign="top" id="bookIntroduce">介绍</td>
                                        <td valign="top">&nbsp;</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>


</body>
</html>
<%conn.close();%>
