<%--
  Created by IntelliJ IDEA.
  User: sdwel
  Date: 2017/10/5
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="entity.TArticleEntity"%>
<%@ page language="java" import="java.util.ArrayList"%>
<%@ page language="java" import="service.TArticleService" %>
<%@ page import="java.util.List" %>
<%@ page import="sun.rmi.log.LogInputStream" %>
<%@ page import="com.alibaba.fastjson.JSON" %>
<%@ page import="com.alibaba.fastjson.JSONObject" %>
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
    <h1><a href="">TOP-K Articles Maybe You Like</a></h1>
</div>
<!-- banner end -->

<!-- content srart -->
<div class="am-g am-g-fixed blog-fixed">
    <div class="am-u-md-12 am-u-sm-12">

        <%

            List<TArticleEntity> list = (List<TArticleEntity>) request.getSession().getAttribute("list");
if(list!=null){
    if(list.size()!=0){
        for (int i=0;i<list.size();i++){
       System.out.println(list.get(i).getArticleAuthor());

        %>
        <article class="am-g blog-entry-article">
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">
                <img src="assets/img/f10.jpg" alt="" class="am-u-sm-12">
            </div>
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">
                <h1><a href="<%=list.get(i).getArticleUrl()%>"><%=list.get(i).getArticleTitle()%></a></h1>
                <p><%=list.get(i).getArticleAuthor()%></p>
                <p><a href="" class="blog-continue">continue reading</a></p>
            </div>
        </article>
        <%
            }}
else { %>

        <article class="am-g blog-entry-article">
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">
                <img src="assets/img/f10.jpg" alt="" class="am-u-sm-12">
            </div>
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">
                <h1><a href="">Sorry!</a></h1>
                <p>There is no result for you</p>
                <%--<p><a href="" class="blog-continue">continue reading</a></p>--%>
            </div>
        </article>

        <%


        }
        }
            else{%>
        <article class="am-g blog-entry-article">
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">
                <img src="assets/img/f10.jpg" alt="" class="am-u-sm-12">
            </div>
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">
                <%--<span><a href="" class="blog-color">article &nbsp;</a></span>--%>
                <%--<span> 作者： &nbsp;</span>--%>
                <%--<span>日期：</span>--%>
                <h1><a href="">Sorry</a></h1>
                <%--<h1><a href=""><%list.get(i);%></a></h1>--%>
                <p>There is no result for you
                </p>
                <p><a href="" class="blog-continue">continue reading</a></p>
            </div>
        </article>
           <% }
        %>




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




<script>
    //返回用户想要的TOPK文章

</script>












<script src="assets/js/jquery.min.js"></script>
<!--<![endif]-->
<!--[if lte IE 8 ]>
<%--<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>--%>
<%--<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>--%>
<%--<script src="assets/js/amazeui.ie8polyfill.min.js"></script>--%>
<%--<![endif]-->--%>
<%--<script src="assets/js/amazeui.min.js"></script>--%>
<!-- <script src="assets/js/app.js"></script> -->
</body>
</html>
