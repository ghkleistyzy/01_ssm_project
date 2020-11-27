<%--
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
    <script type="text/javascript" src="/static/js/changebigpic.js">
    </script>
</head>

<body>

<div class="topinfo">
    <ul>
        <li>
            <a href="person_center">个人中心</a>
        </li>
        <li>
            <a href="cart">购物车</a>
        </li>
        <li>
            <a href="order">我的订单</a>
        </li>
        <li>
            <a href="index.jsp">请登录</a>
            <a href="register.jsp">点我注册</a>
        </li>
    </ul>
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
        <div class="product">
            <a href="">
                <img alt="图片" src="/static/image/product1.jpg"/>
                <br/>
                <b class="price">¥2269.00</b>
                <b class="name">华为 畅享20Plus 5G手机 8+128G</b>
            </a>
        </div>
        <div class="product">
            <a href="">
                <img alt="图片" src="/static/image/product2.jpg"/>
                <br/>
                <b class="price">¥29.90</b>
                <b class="name">永生636三件套铱金书法钢笔套装</b>
            </a>
        </div>
        <div class="product">
            <a href="">
                <img alt="图片" src="/static/image/product3.jpg"/>
                <br/>
                <b class="price">¥79.90</b>
                <b class="name">心相印抽纸 茶语丝享系列3层150抽面巾纸*24包纸巾</b>
            </a>
        </div>
        <div class="product">
            <a href="">
                <img alt="图片" src="/static/image/product4.jpg"/>
                <br/>
                <b class="price">¥109.00</b>
                <b class="name">babycare儿童保温杯吸管杯水杯宝宝学饮杯保温水壶316不锈钢带把手 270ml</b>
            </a>
        </div>
        <div class="product">
            <a href="">
                <img alt="图片" src="/static/image/product1.jpg"/>
                <br/>
                <b class="price">¥2269.00</b>
                <b class="name">华为 畅享20Plus 5G手机 8+128G</b>
            </a>
        </div>
        <div class="product">
            <a href="">
                <img alt="图片" src="/static/image/product2.jpg"/>
                <br/>
                <b class="price">¥29.90</b>
                <b class="name">永生636三件套铱金书法钢笔套装</b>
            </a>
        </div>
        <div class="product">
            <a href="">
                <img alt="图片" src="/static/image/product3.jpg"/>
                <br/>
                <b class="price">¥79.90</b>
                <b class="name">心相印抽纸 茶语丝享系列3层150抽面巾纸*24包纸巾</b>
            </a>
        </div>
        <div class="product">
            <a href="">
                <img alt="图片" src="/static/image/product4.jpg"/>
                <br/>
                <b class="price">¥109.00</b>
                <b class="name">babycare儿童保温杯吸管杯水杯宝宝学饮杯保温水壶316不锈钢带把手 270ml</b>
            </a>
        </div>

    </div>

</div>

<div class="bottominfo">
    <i>@Author kleistyzy</i>
</div>
<%--<%--%>
<%--    String name=request.getParameter("name");--%>
<%--    session.setAttribute("name", name);--%>
<%--    String password=request.getParameter("password");--%>
<%--    session.setAttribute("possword", password);--%>

<%--%>--%>
</body>
</html>