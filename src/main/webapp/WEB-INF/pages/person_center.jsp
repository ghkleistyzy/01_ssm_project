<%--
  Created by IntelliJ IDEA.
  User: 袁竹雨
  Date: 2020/11/25
  Time: 20:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*,org.ssm.bean.*" isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>

<head>
    <title>Person_center</title>
    <link type="text/css" rel="stylesheet" href="/static/css/style-personcenter.css" />
    <base href="<%=basePath%>">
</head>
<body>
<div class="topinfo">
    <ul>
        <li>
            <a href="exit">退出登录</a>
        </li>
        <li>
            <a href="person_center">个人中心</a>
        </li>
        <li>
            <a href="publish">我要发布</a>
        </li>
        <li>
            <a href="cart">购物车</a>
        </li>
        <li>
            <a href="order">我的订单</a>
        </li>
        <li>
            <a>欢迎，<%=((User) request.getSession().getAttribute("nowUser")).getName() %> </a>
        </li>
    </ul>
</div>
<form class="personalinfoform" action="updateInfo"  method="POST" name="personalinfoform" onsubmit="return checkUpdate()">
    <%
        User nowUser = (User) request.getSession().getAttribute("nowUser");
    %>
    <table style="border-spacing: 10px;">
        <tr>
            <td>UID：</td>
            <td><label><%=nowUser.getId() %></label></td>
        </tr>
        <tr>
            <td>用户名：</td>
            <td><input type="text" value="<%=nowUser.getName() %>" style="width: 300px;height: 30px; font-size: 20px;" name="name"/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td>
                <input type="text" value="<%=nowUser.getPassword() %>" style="width: 300px;height: 30px; font-size: 20px;" name="password"/>
            </td>
        </tr>
        <tr>
            <td>邮箱：</td>
            <td><input type="email" value="<%=nowUser.getEmail() %>" style="width: 300px;height: 30px; font-size: 20px;" name="email"/></td>
        </tr>
        <tr>
            <td>电话号码：</td>
            <td><input type="text" value="<%=nowUser.getPhone() %>" style="width: 300px;height: 30px; font-size: 20px;" name="phone"/></td>

            <td></td>
            <td>
                <input type="submit" class="confirm" value="确认修改"/>
            </td>
        </tr>
    </table>

    <a href="returnlist">点此返回主页面！</a>
</form>
</body>
</html>
