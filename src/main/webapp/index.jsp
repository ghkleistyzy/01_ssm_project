<%--
  Created by IntelliJ IDEA.
  User: 袁竹雨
  Date: 2020/11/23
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="javax.xml.ws.Response" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="/static/css/styles.css">
</head>

<body>
<div id="bigBox">
    <h1>登 录</h1>
    <form action="/login" method="post" name="loginform" onsubmit="return LoginCheck();">

        <div class="inputBox">
            <div class="inputText">
                <i class="icon"><img alt="usericon" src="/static/image/usericon.png"/></i>
                <input type="text" placeholder="用户名" name="name" maxlength="20"/>
                <i class="icon"></i>
            </div>

            <div class="inputText">
                <i class="icon"><img alt="passwordicon" src="/static/image/passwordicon.png"/></i>
                <input type="password" placeholder="密码" name="password" maxlength="18"/>
            </div>
            <input type="submit" class="inputButton" value="登 录"/>&emsp;&emsp;&emsp;&emsp;
            <a href="register.jsp"><input type="button" class="inputButton" value="注 册"/></a>
        </div>

    </form>
</div>
<!--   以下代码用以显示登陆失败信息 -->
<%
    String loginMsg = (String) request.getParameter("loginMsg");
    if(loginMsg!=null&&loginMsg.equals("fail")) {
//        request.setAttribute("loginMsg", "");


%>
<script type="text/javascript">
    alert("登陆失败，请检查您的用户名和密码输入是否正确！");
</script>
<%
    }
%>
<!--     end -->
<script src="/static/js/logincheck.js"></script>
</body>
</html>