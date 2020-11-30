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

    <script type="text/javascript" src="/js/personalcenter.js"></script>
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
<div class="logo">
    <a href="/returnlist"><img alt="辣鱼" src="/static/image/logo.png"/></a>
</div>

<div class="mainframe">

    <div class="select">
        <div class="choice">
            <button onclick="changeToInfo()">个人信息</button>
        </div>
        <div class="choice">
            <button onclick="changeToRelease()">我发布的</button>
        </div>
    </div>
    <div class="info">
        <div class="personalinfo" id="personalinfo">
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

    <a href="returnlist.do">点此返回主页面！</a>


</form>
        </div>
        <div class="myrelease" id="myrelease">
            <table border="1" cellspacing="0">
                <tr>
                    <th>缩略图</th>
                    <th>商品编号</th>
                    <th>商品名称</th>
                    <th>商品类型</th>
                    <th>商品价格</th>
                    <th>库存</th>
                    <th>操作</th>
                </tr>
                <%
                    List<Product> publishedProducts = (List<Product>) request.getAttribute("publishedProducts");
                    if(publishedProducts.size() > 0){
                        for(Product product : publishedProducts){
                %>
                <tr>
                    <td>
                        <a  style="width: 70px;height: 50px;"/>无图，爬</a>
                    </td>
                    <td><%=product.getPid() %> </td>
                    <td><%=product.getPname() %></td>
                    <%
                        String productType = product.getPfirsttype() + "、" + product.getPsecondtype();
                    %>
                    <td><%=productType %></td>
                    <td><%=product.getPprice() %></td>
                    <td><%=product.getPnum() %></td>
                    <td>
                        <a href="toupdate?pid=<%=product.getPid() %>">修改</a>
                        <a href="deleteproduct?pid=<%=product.getPid() %>" onclick="alert('删除成功！');">删除</a>
                    </td>
                </tr>
                <%
                        }
                    }
                %>

            </table>
        </div>
    </div>
</div>
</body>
</html>
