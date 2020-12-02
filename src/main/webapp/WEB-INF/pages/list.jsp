<%@ page import="org.ssm.bean.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.ssm.bean.User" %><%--
  Created by IntelliJ IDEA.
  User: 袁竹雨
  Date: 2020/11/23
  Time: 19:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="/static/css/mainstyle.css"/>
    <script type="text/javascript" src="/js/changebigpic.js">
    </script>
</head>

<body>
<%--从数据库中随机拿商品数据--%>
<%
    String isFirstLoad = (String) request.getAttribute("isFirstLoad");
    isFirstLoad = isFirstLoad == null ? "true" : "false";
%>
<form action="main" style="display: none;" method="POST" id="submitform">
    <input type="text" id="isfirstload" value="<%=isFirstLoad %>"/>
</form>
<script type="text/javascript">
    var isFirstLoad = document.getElementById("isfirstload").value;
    if(isFirstLoad == "true"){
        document.getElementById("submitform").submit();
    }
</script>

<div class="topinfo">
    <%
        User nowUser = (User) request.getSession().getAttribute("nowUser");
        if(nowUser == null){
    %>
    <ul>
        <li>
            <a href="login.jsp">请登录</a>
            <a href="register.jsp">点我注册</a>
        </li>
    </ul>
    <%
    }
    else{
    %>
    <ul>
        <li>
            <a href="exit">退出登录</a>
        </li>
        <li>
            <a href=person_center>个人中心</a>
        </li>
        <li>
            <a href="publish.do">我要发布</a>
        </li>
        <li>
            <a href="cart.do">购物车</a>
        </li>
        <li>
            <a href="order.do">我的订单</a>
        </li>
        <li>
            <a>欢迎，<%=nowUser.getName() %> </a>
        </li>
    </ul>
    <%
        }
    %>
</div>

<div class="logoandsearch">
    <div class="logo">
        <a href="main.html"><img alt="辣魚" src="/static/image/logo.png"/></a>
    </div>
    <div class="search">
        <input type="text" name="search" placeholder="在此输入要搜索的商品信息"/>
        <a href="search.jsp"><img alt="search" src="/static/image/search.jpg"/></a>
    </div>
</div>

<div class="mainframe">
    <div class="category">
        <ul>
            <li>
                <a href="">数码3C/</a>
                <a href="">电脑/</a>
                <a href="">手机/</a>
                <a href="">电子配件/</a>
            </li>
            <li>
                <a href="">服装饰品/</a>
                <a href="">男士服装/</a>
                <a href="">女士服装/</a>
                <a href="">首饰美妆/</a>
            </li>
            <li>
                <a href="">生活百货/</a>
            </li>
            <li>
                <a href="">家用电器/</a>
            </li>
            <li>
                <a href="">运动户外/</a>
            </li>
            <li>
                <a href="">虚拟道具/</a>
            </li>
        </ul>
    </div>
    <div class="bigshow">
        <a href=""><img alt="图片" src="/static/image/bigpic1.jpg" id="bigpic"/></a>
    </div>

    <div class="word">
        <h1>精选好货</h1>
    </div>

    <div class="selected">
        <%
            List<Product> randomProducts = (ArrayList<Product>) request.getAttribute("randomProducts");
            if(randomProducts != null && randomProducts.size() > 0){
                for(Product product : randomProducts){
                    String hrefPath = "getoneproduct?pid=" + product.getPid();
        %>
        <div class="product">
            <a href="<%=hrefPath %>" target="_blank">
                <img alt="图片" src="<%=product.getPpicloc() %>"/>
                <br/>
                <b class="price">¥<%=product.getPprice() %></b>
                <b class="name"><%=product.getPname() %></b>
            </a>
        </div>

        <%
                }
            }
        %>

    </div>

</div>

<div class="bottominfo">
    <i>@Author kleistyzy</i>
</div>

</body>
</html>