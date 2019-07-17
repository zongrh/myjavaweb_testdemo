<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/15
  Time: 1:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script language="JavaScript">
        function checkNull(form) {
            for (var i = 0; i < form.length; i++) {
                if (form.elements[i].value == "") {
                    alert("很抱歉，" + form.elements[i].title + " 不能为空！");
                    form.elements[i].focus();
                    return false;
                }
            }
        }
    </script>
</head>
<body>
<%
    if (session.getAttribute("message") != null) {
        System.out.println("log-- "+session.getAttribute("message").toString());
        out.println(session.getAttribute("message").toString());
    }
%>
<br/>
<form name="form1" method="post" action="deal.jsp" onsubmit="checkNull(form1);">
    留言人：&nbsp;&nbsp;
    <input name="author" type="text" id="author" size="30" title="留言人"><br/>
    留言内容：
    <textarea name="content" cols="70" rows="10" title="留言内容"
              id="content"></textarea><br/>
    <input name="Submit" type="submit" value="签写留言">
    <input name="Submit2" type="reset" value="重置">


</form>

</body>
</html>
