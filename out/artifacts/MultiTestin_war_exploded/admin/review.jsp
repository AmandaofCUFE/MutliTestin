<%--
  Created by IntelliJ IDEA.
  User: sdwel
  Date: 2017/10/5
  Time: 23:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="entity.TCollectionEntity"%>
<%@ page language="java" import="java.util.ArrayList"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>article with sidebar  | ShareReading</title>
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

<body id="blog-article-sidebar"onload="collectArticleData();">
<div class="am-breadcrumb">

    <!-- 头部菜单 -->
    <jsp:include page="header.jsp" />
</div>
<div class="left-sidebar">

    <!-- 侧边栏 -->
    <jsp:include page="usercenterleft.jsp" />
</div>
<hr>
<div class="am-g am-g-fixed blog-fixed blog-content">

    <table id = "collectArticleData" name = "collectArticleData" class="am-table am-table-bordered am-table-centered">
        <thead>
        <tr>
            <th>文章题目</th>
            <th>作者</th>
            <%--<th>文章地址</th>--%>
            <th>读后感</th>
        </tr>
        </thead>
        <tbody></tbody>
    </table>


</div>

<script>
    function collectArticleData() {
        //alert("我的个人信息");
        $.ajax({
            type: 'get', //GET
            url: '/ReviewInfor',
            async: false,    //或false,是否异步
            data: {},
            timeout: 5000,    //超时时间
            dataType: 'json',   //返回的数据格式：json/xml/html/script/jsonp/text

            success: function (data) {
                var json = eval(data);

                for(var i=0; i<json.length; i++){
//                    $('#collectArticleData tbody').after("<tr><td>"+json[i].articleTitle+"</td><td>&nbsp;&nbsp;"+json[i].articleAuthor+"</td><td>&nbsp;&nbsp;"+json[i].articleUrl+"</td><td>&nbsp;&nbsp;"+json[i].articleReview+"</td></tr>\n")
//                    $('#collectArticleData tbody').after("aaaaa");
                    $('#collectArticleData tbody').after("<tr><td>"+json[i].articleTitle+"</td><td>&nbsp;&nbsp;"+json[i].articleAuthor+"</td><td>&nbsp;&nbsp;"+json[i].articleUrl+"</td></tr>\n")

                }

                },
            error:function(data){
                alert("collectionAticleData失败！");
            }
        })
    }
</script>

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="assets/js/jquery.min.js"></script>
<!--<![endif]-->
<!--[if lte IE 8 ]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/header.js"></script>
</body>
</html>
