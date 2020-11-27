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
    <base href="<%=basePath%>">
</head>
<body>
<a>欢迎，<%=((User) request.getSession().getAttribute("nowUser")).getName() %> </a>
<form class="personalinfoform"  method="POST" name="personalinfoform" onsubmit="return checkUpdate()">
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
            <td><input type="text" value="<%=nowUser.getName() %>" style="width: 300px;height: 30px; font-size: 20px;" name="uname"/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td>
                <input type="text" value="<%=nowUser.getPassword() %>" style="width: 300px;height: 30px; font-size: 20px;" name="upassword"/>
            </td>
        </tr>
        <tr>
            <td>邮箱：</td>
            <td><input type="email" value="<%=nowUser.getEmail() %>" style="width: 300px;height: 30px; font-size: 20px;" name="uemail"/></td>
        </tr>
        <tr>
            <td>电话号码：</td>
            <td><input type="text" value="<%=nowUser.getPhone() %>" style="width: 300px;height: 30px; font-size: 20px;" name="uphone"/></td>

            <td></td>
            <td>
                <input type="submit" class="confirm" value="确认修改"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
