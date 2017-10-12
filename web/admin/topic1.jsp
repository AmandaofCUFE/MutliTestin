<%--
  Created by IntelliJ IDEA.
  User: sdwel
  Date: 2017/10/5
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>ShareReading</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="assets/i/favicon.png">
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileImage" content="assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileColor" content="#0e90d2">
    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="assets/css/app.css">
</head>


<body id="firstpage">

<div class="am-breadcrumb">

    <!-- 头部菜单 -->
    <jsp:include page="header.jsp" />
</div>

<!-- banner start -->
<div class="am-g am-g-fixed blog-fixed am-u-sm-centered blog-article-margin">
    <div data-am-widget="slider" class="am-slider am-slider-b1" data-am-slider='{&quot;controlNav&quot;:false}' >
        <ul class="am-slides">
            <%
                String src[]={"assets/img/b1.jpg","assets/img/b2.jpg","assets/img/b3.jpg","assets/img/b4.jpg"};
            for(int i=0;i<3;i++){
           // String sr=src[i];
            %>
            <li>
                <img src="<%=src[i]%>">
                <div class="blog-slider-desc am-slider-desc ">
                    <div class="blog-text-center blog-slider-con">
                        <span><a href="readingArticle.jsp" class="blog-color">Reading This Article &nbsp;</a></span>
                        <h1 class="blog-h-margin"><a href="readingArticle.jsp">总在思考一句积极的话</a></h1>
                        <p>那时候刚好下着雨，柏油路面湿冷冷的，还闪烁着青、黄、红颜色的灯火。
                        </p>
                        <span class="blog-bor">2015/10/9</span>
                        <br><br><br><br><br><br><br>
                    </div>
                </div>
            </li>

          <%  }
            %>
        </ul>
    </div>
</div>
<!-- banner end -->

<!-- content srart -->
<div class="am-g am-g-fixed blog-fixed">
    <div class="am-u-md-12 am-u-sm-12">

        <%

            for(int i=0;i<3;i++){
                // String sr=src[i];
        %>


        <article class="am-g blog-entry-article">
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">
                <img src="assets/img/f10.jpg" alt="" class="am-u-sm-12">
            </div>
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">
                <span><a href="readingArticle.jsp" class="blog-color">Reading this Article &nbsp;</a></span>
                <span>作者：&nbsp;</span>
                <span>日期：</span>
                <h1><a href="readingArticle.jsp">题目：我本楚狂人，凤歌笑孔丘</a></h1>
                <p>简介：我们一直在坚持着，不是为了改变这个世界，而是希望不被这个世界所改变。
                </p>
                <p><a href="" class="blog-continue">continue reading</a></p>
            </div>
        </article>
<%
    }
%>



        <%--<article class="am-g blog-entry-article">--%>
            <%--<div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">--%>
                <%--<img src="assets/img/f6.jpg" alt="" class="am-u-sm-12">--%>
            <%--</div>--%>
            <%--<div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">--%>
                <%--<span><a href="" class="blog-color">article&nbsp;</a></span>--%>
                <%--<span>@amazeUI &nbsp;</span>--%>
                <%--<span>2015/10/9</span>--%>
                <%--<h1><a href="">世间所有的相遇，都是久别重逢。</a></h1>--%>
                <%--<p>你可以选择在原处不停地跟周遭不解的人解释你为何这么做，让他们理解你，你可以选择什么都不讲，自顾自往前走。--%>
                <%--</p>--%>
                <%--<p><a href="" class="blog-continue">continue</a></p>--%>
            <%--</div>--%>
        <%--</article>--%>

        <%--<article class="am-g blog-entry-article">--%>
            <%--<div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">--%>
                <%--<img src="assets/img/f12.jpg" alt="" class="am-u-sm-12">--%>
            <%--</div>--%>
            <%--<div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">--%>
                <%--<span><a href="" class="blog-color">article&nbsp;</a></span>--%>
                <%--<span>@amazeUI</span>--%>
                <%--<span>2015/10/9</span>--%>
                <%--<h1><a href="">陌上花开，可缓缓归矣。</a></h1>--%>
                <%--<p>那时候刚好下着雨，柏油路面湿冷冷的，还闪烁着青、黄、红颜色的灯火。我们就在骑楼下躲雨，看绿色的邮筒孤独地站在街的对面。--%>
                <%--</p>--%>
                <%--<p><a href="" class="blog-continue">continue</a></p>--%>
            <%--</div>--%>
        <%--</article>--%>

        <%--<article class="am-g blog-entry-article">--%>
            <%--<div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">--%>
                <%--<img src="assets/img/f22.jpg" alt="" class="am-u-sm-12">--%>
            <%--</div>--%>
            <%--<div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">--%>
                <%--<span><a href="" class="blog-color">article&nbsp;</a></span>--%>
                <%--<span>@amazeUI</span>--%>
                <%--<span>2015/10/9</span>--%>
                <%--<h1><a href="">爱自己是终生浪漫的开始</a></h1>--%>
                <%--<p>the whole of life becomes an act of letting go, but what always hurts the most is not taking a moment to say goodbye--%>
                <%--</p>--%>
                <%--<p><a href="" class="blog-continue">continue</a></p>--%>
            <%--</div>--%>
        <%--</article>--%>

        <%--<article class="am-g blog-entry-article">--%>
            <%--<div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">--%>
                <%--<img src="assets/img/f18.jpg" alt="" class="am-u-sm-12">--%>
            <%--</div>--%>
            <%--<div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">--%>
                <%--<span><a href="" class="blog-color">article&nbsp;</a></span>--%>
                <%--<span> @amazeUI &nbsp;</span>--%>
                <%--<span>2015/10/9</span>--%>
                <%--<h1><a href="">My dear amazeUI, Hello </a></h1>--%>
                <%--<p>那时候刚好下着雨，柏油路面湿冷冷的，还闪烁着青、黄、红颜色的灯火。我们就在骑楼下躲雨，看绿色的邮筒孤独地站在街的对面。--%>
                <%--</p>--%>
                <%--<p><a href="" class="blog-continue">continue reading</a></p>--%>
            <%--</div>--%>
        <%--</article>--%>

        <%--<article class="am-g blog-entry-article">--%>
            <%--<div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">--%>
                <%--<img src="assets/img/f20.jpg" alt="" class="am-u-sm-12">--%>
            <%--</div>--%>
            <%--<div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">--%>
                <%--<span><a href="" class="blog-color">article&nbsp;</a></span>--%>
                <%--<span> @amazeUI &nbsp;</span>--%>
                <%--<span>2015/10/9</span>--%>
                <%--<h1><a href="">My way or the highway</a></h1>--%>
                <%--<p>A big wind rises， clouds are driven away. Home am Inow the world is under my sway. Where are brave men to guard the four frontiers today！--%>
                <%--</p>--%>
                <%--<p><a href="" class="blog-continue">continue reading</a></p>--%>
            <%--</div>--%>
        <%--</article>--%>

        <%--<article class="am-g blog-entry-article">--%>
            <%--<div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">--%>
                <%--<img src="assets/img/f19.jpg" alt="" class="am-u-sm-12">--%>
            <%--</div>--%>
            <%--<div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">--%>
                <%--<span><a href="" class="blog-color">article&nbsp;</a></span>--%>
                <%--<span> @amazeUI &nbsp;</span>--%>
                <%--<span>2015/10/9</span>--%>
                <%--<h1><a href="">一想到你，我这张丑脸上就泛起微笑</a></h1>--%>
                <%--<p>那一天我二十一岁，在我一生的黄金时代。我有好多奢望。我想爱，想吃，还想在一瞬间变成天上半明半暗的云。--%>
                <%--</p>--%>
                <%--<p><a href="" class="blog-continue">continue reading</a></p>--%>
            <%--</div>--%>
        <%--</article>--%>

        <ul class="am-pagination">
            <li class="am-pagination-prev"><a href="">&laquo; Prev</a></li>
            <li class="am-pagination-next"><a href="">Next &raquo;</a></li>
        </ul>
    </div>

</div>
<!-- content end -->

<div class="am-breadcrumb">

    <!-- 底部文字 -->
    <jsp:include page="footer.jsp" />
</div>


















<script src="assets/js/jquery.min.js"></script>
<!--<![endif]-->
<!--[if lte IE 8 ]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script src="assets/js/amazeui.min.js"></script>
<%--<script src="assets/js/topic.js"></script>--%>
<script src="assets/js/header.js"></script>
</body>
</html>
