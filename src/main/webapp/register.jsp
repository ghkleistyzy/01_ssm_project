<%--
  Created by IntelliJ IDEA.
  User: 袁竹雨
  Date: 2020/11/23
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="css/registerstyles.css">
</head>

<body>
<div id="bigBox">
    <h1>注 册</h1>
    <form action="/register" method="post">

        <div class="inputBox">
            <div class="inputText">
                <i class="icon"><img alt="usericon" src="image/usericon.png"/></i>
                <input type="text" placeholder="用户名" name="name" id="name" maxlength="20"/>
                <i class="icon"></i>
            </div>

            <div class="inputText">
                <i class="icon"><img alt="passwordicon" src="image/passwordicon.png"/></i>
                <input type="password" placeholder="密码" name="password" id="password" maxlength="18"/>
            </div>

            <div class="inputText">
                <i class="icon"><img alt="passwordicon" src="image/emailicon.png"/></i>
                <input type="text" placeholder="邮箱" name="email" id="email" maxlength="20"/>
            </div>

            <div class="inputText">
                <i class="icon"><img alt="passwordicon" src="image/phoneicon.png"/></i>
                <input type="text" placeholder="手机号" name="phone" id="phone" maxlength="11"/>
            </div>
            <input type="submit" class="inputButton" value="注 册"/>
            <a href="index.jsp"><input type="button" value="返回登录页" class="inputButton"/></a>
        </div>


    </form>
</div>

</body>
</html>

