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
    <title>$Title$</title>
    <link href="package4/style4.css" type="text/css">
    <style type="text/css">
        body {
            margin: 0px;
            font-size: 12px;

        }

        .box {
            border: 1px solid #004C86;
            width: 150px;
            height: 20px;
        }

        .div1 {
            background-image: url("package4/bg.jpg");
            height: 600px;
            width: 803px;
            padding-top: 220px;
            padding-left: 20px;
            text-align: left;
        }
    </style>
    <script type="text/javascript">
        function reg(form) {
            if (form.username.value == "") {
                alert("用户名不能为空！");
                return false;
            }
            if (form.password.value == "") {
                alert("密码不能为空！");
                return false;
            }
            if (form.repassword.value == "") {
                alert("确认密码不能为空！");
                return false;
            }
            if (form.password.value != form.repassword.value) {
                alert("两次密码输入不一致！");
                return false;
            }
            if (form.question.value == "") {
                alert("密码找回问题不能为空！");
                return false;
            }
            if (form.answer.value == "") {
                alert("密码找回答案不能为空！");
                return false;
            }
            if (form.email.value == "") {
                alert("电子邮箱不能为空！");
                return false;
            }

        }
    </script>
</head>
<body>
<div align="center">
    <div class="div1">
        <form action="/SaveServlet" method="post" onsubmit="return reg(this);">
            <table align="center" border="0" width="500">

                <tr>
                    <td align="right">用户名</td>
                    <td><input type="text" name="username" class="box"></td>
                </tr>

                <tr>
                    <td align="right">密码</td>
                    <td><input type="password" name="password" class="box"></td>
                </tr>

                <tr>
                    <td align="right">确认密码</td>
                    <td><input type="password" name="repassword" class="box"></td>
                </tr>

                <tr>
                    <td align="right">性别</td>
                    <td>
                        <input type="radio" name="sex" value="男" checked="checked">男
                        <input type="radio" name="sex" value="女">女
                    </td>
                </tr>

                <tr>
                    <td align="right">密码找回问题</td>
                    <td><input type="text" name="question" class="box"></td>
                </tr>
                <tr>
                    <td align="right">密码找回答案</td>
                    <td><input type="text" name="answer" class="box"></td>
                </tr>
                <tr>
                    <td align="right">邮箱</td>
                    <td><input type="text" name="email" class="box"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center" height="40">
                        <input type="submit" value="注册">
                        <input type="reset" value="重置">
                    </td>
                </tr>

            </table>
        </form>
    </div>
</div>

</body>
</html>
