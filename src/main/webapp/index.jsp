<%--
  Created by IntelliJ IDEA.
  User: 袁竹雨
  Date: 2020/11/23
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>

<body>
<div id="bigBox">
    <h1>登 录</h1>
    <form action="/login" method="post">

        <div class="inputBox">
            <div class="inputText">
                <i class="icon"><img alt="usericon" src="image/usericon.png"/></i>
                <input type="text" placeholder="用户名" name="name" maxlength="20"/>
                <i class="icon"></i>
            </div>

            <div class="inputText">
                <i class="icon"><img alt="passwordicon" src="image/passwordicon.png"/></i>
                <input type="password" placeholder="密码" name="password" maxlength="18"/>
            </div>
            <input type="submit" class="inputButton" value="登 录"/>&emsp;&emsp;&emsp;&emsp;
            <a href="register.jsp"><input type="button" class="inputButton" value="注 册"/></a>
        </div>

    </form>
</div>

</body>
</html>